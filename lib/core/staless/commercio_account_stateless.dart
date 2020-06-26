import 'dart:convert';

import 'package:bip39/bip39.dart' as bip39;
import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/core/utils/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

/// The [StatelessCommercioAccount] module allows to generate mnemonics, derive
/// wallets, send and request tokens.
abstract class StatelessCommercioAccount {
  /// Generates a new String of 24 space-separated mnemonic words.
  static Future<String> generateMnemonic() {
    return compute(computeMnemonic, const ComputeMnemonicData(256));
  }

  /// Save [mnemonic] inside the [secureStorage] identified by the key
  /// [secureStorageKey].
  static Future<void> storeMnemonic({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
    @required String mnemonic,
  }) {
    return secureStorage.write(key: secureStorageKey, value: mnemonic);
  }

  /// Get the mnemonic from the [secureStorage] identified by the key
  /// [secureStorageKey].
  static Future<String> fetchMnemonic({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
  }) {
    return secureStorage.read(key: secureStorageKey);
  }

  /// Deletes the mnemonic inside the [secureStorage] identified by the key
  /// [secureStorageKey].
  static Future<void> deleteMnemonic({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
  }) {
    return secureStorage.delete(key: secureStorageKey);
  }

  /// Restores the mnemonic words from the [secureStorage] identified by the
  /// key [secureStorageKey]. The words and the [networkInfo] are used to
  /// derive the [Wallet].
  static Future<Wallet> restoreWallet({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
    @required NetworkInfo networkInfo,
  }) async {
    final mnemonic = await fetchMnemonic(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);

    if (mnemonic == null) {
      throw const MnemonicNotStoredException();
    }

    return deriveWallet(networkInfo: networkInfo, mnemonic: mnemonic);
  }

  /// Generate a new [Wallet] associated with the given optional [mnemonic]
  /// and the [networkInfo].
  ///
  /// If no [mnemonic] are specified then new mnemonic are generated
  /// automatically.
  ///
  /// An optional [lastDerivationPathSegment] can be specified to derive a
  /// different [Wallet].
  static Future<Wallet> generateNewWallet({
    @required NetworkInfo networkInfo,
    String mnemonic,
    String lastDerivationPathSegment,
  }) async {
    mnemonic ??= await generateMnemonic();

    return deriveWallet(
        networkInfo: networkInfo,
        mnemonic: mnemonic,
        lastDerivationPathSegment: lastDerivationPathSegment);
  }

  /// Derive the [Wallet] from the given [networkInfo] and [mnemonic].
  ///
  /// An optional [lastDerivationPathSegment] can be specified to derive a
  /// different [Wallet].
  static Future<Wallet> deriveWallet({
    @required NetworkInfo networkInfo,
    @required String mnemonic,
    String lastDerivationPathSegment,
  }) {
    return compute(
        computeWallet,
        ComputeWalletData(
            mnemonic: mnemonic,
            networkInfo: networkInfo,
            lastDerivationPathSegment: lastDerivationPathSegment));
  }

  /// Generate a pairwise [Wallet] from the given [networkInfo] and [mnemonic].
  /// The [lastDerivationPathSegment] parameter determines the wallet
  /// generated.
  static Future<Wallet> generatePairwiseWallet({
    @required NetworkInfo networkInfo,
    @required String mnemonic,
    @required String lastDerivationPathSegment,
  }) async {
    return generateNewWallet(
      networkInfo: networkInfo,
      mnemonic: mnemonic,
      lastDerivationPathSegment: lastDerivationPathSegment,
    );
  }

  /// Request an [amount] of free tokens with optional [httpHelper] for the
  /// [walletAddress].
  ///
  /// A [AccountRequestResponse] is returned with the success or failure of
  /// the request.
  static Future<AccountRequestResponse> requestFreeTokens({
    @required String walletAddress,
    String amount = '100000000',
    HttpHelper httpHelper,
  }) async {
    if (int.tryParse(amount) == null) {
      return const AccountRequestError('Amount is not a valid integer');
    }

    httpHelper ??= HttpHelper();

    Response response;
    try {
      response = await httpHelper.faucetRequest(path: HttpPath.give, data: {
        'addr': walletAddress,
        'amount': amount,
      });
    } catch (e) {
      return AccountRequestError(e.toString());
    }

    // TODO: Check response content

    return AccountRequestSuccess(response.body);
  }

  /// Get the account balance of the wallet [walletAddress] using the optional
  /// [httpHelper].
  ///
  /// Returns a list of [StdCoin] or an [AccountRequestError] is thrown.
  static Future<List<StdCoin>> checkAccountBalance({
    @required String walletAddress,
    HttpHelper httpHelper,
  }) async {
    httpHelper ??= HttpHelper();

    Response response;
    try {
      response = await httpHelper.getRequest(
          endpoint: HttpEndpoint.balance, walletAddress: walletAddress);
    } catch (e) {
      throw AccountRequestError(e.toString());
    }

    if (response.statusCode != 200) {
      throw Exception(
          'Error: ${response.reasonPhrase} (${response.statusCode}): ${response.body}');
    }

    final balanceFullResult = BalanceFullResult.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);

    return balanceFullResult.stdCoins;
  }

  /// Send the [amount] of tokens from the [senderWallet] and [senderAddress]
  /// to a [recipientAddress] list.
  ///
  /// An optional [feeAmount] and [gas] can be specified.
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> sendTokens({
    @required String senderAddress,
    @required Wallet senderWallet,
    @required String recipientAddress,
    @required List<StdCoin> amount,
    List<StdCoin> feeAmount,
    String gas,
  }) async {
    StdFee fee;

    if (gas != null && feeAmount != null) {
      if (int.tryParse(gas) == null) {
        throw const AccountRequestError('Gas is not a valid integer');
      }

      fee = StdFee(
        gas: gas,
        amount: feeAmount,
      );
    }

    return TxHelper.createSignAndSendTx(
      [
        MsgSend(
          amount: amount,
          fromAddress: senderAddress,
          toAddress: recipientAddress,
        ),
      ],
      senderWallet,
      fee: fee,
    );
  }
}

/// Represent a balance response
class BalanceFullResult {
  final String height;
  final List<StdCoin> stdCoins;

  const BalanceFullResult({@required this.height, @required this.stdCoins});

  BalanceFullResult.fromJson(Map<String, dynamic> json)
      : height = json['height'] as String,
        stdCoins = (json['result'] as List)
            .map((res) => StdCoin.fromJson(res as Map<String, dynamic>))
            .toList();
}

/// Helper plain data object to send data to [compute()] function.
class ComputeWalletData {
  final String mnemonic;
  final NetworkInfo networkInfo;
  final String lastDerivationPathSegment;

  const ComputeWalletData({
    @required this.mnemonic,
    @required this.networkInfo,
    this.lastDerivationPathSegment,
  });
}

/// Helper plain data object to send data to [compute()] function.
class ComputeMnemonicData {
  final int strength;

  const ComputeMnemonicData(this.strength);
}

/// Generate new mnemonic from the [data].
String computeMnemonic(ComputeMnemonicData data) {
  return bip39.generateMnemonic(strength: data.strength);
}

/// Derive a walllet from the [data].
Wallet computeWallet(ComputeWalletData data) {
  if (data.lastDerivationPathSegment == null) {
    return Wallet.derive(data.mnemonic.split(' '), data.networkInfo);
  }

  return Wallet.derive(data.mnemonic.split(' '), data.networkInfo,
      lastDerivationPathSegment: data.lastDerivationPathSegment);
}
