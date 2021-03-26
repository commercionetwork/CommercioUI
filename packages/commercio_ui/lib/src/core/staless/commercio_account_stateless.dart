import 'dart:convert';

import 'package:commerciosdk/export.dart';
import 'package:http/http.dart';
import 'package:sacco/sacco.dart';

import '../../data/secret_storage.dart';
import '../../entities/entities.dart';
import '../../helpers/isolate_helper.dart';
import '../utils/utils.dart';

/// The [StatelessCommercioAccount] module allows to generate mnemonics, derive
/// wallets, send and request tokens.
class StatelessCommercioAccount {
  const StatelessCommercioAccount();

  /// Generates a new String of 24 space-separated mnemonic words.
  Future<String> generateMnemonic() {
    return compute(computeMnemonic, const ComputeMnemonicData(256));
  }

  /// Save [mnemonic] inside the [secureStorage] identified by the key
  /// [secureStorageKey].
  Future<void> storeMnemonic({
    required ISecretStorage secretStorage,
    required String secureStorageKey,
    required String mnemonic,
  }) {
    return secretStorage.write(key: secureStorageKey, value: mnemonic);
  }

  /// Get the mnemonic from the [secureStorage] identified by the key
  /// [secureStorageKey].
  Future<String?> fetchMnemonic({
    required ISecretStorage secretStorage,
    required String secureStorageKey,
  }) {
    return secretStorage.read(key: secureStorageKey);
  }

  /// Deletes the mnemonic inside the [secureStorage] identified by the key
  /// [secureStorageKey].
  Future<void> deleteMnemonic({
    required ISecretStorage secretStorage,
    required String secureStorageKey,
  }) {
    return secretStorage.delete(key: secureStorageKey);
  }

  /// Restores the mnemonic words from the [secureStorage] identified by the
  /// key [secureStorageKey]. The words and the [networkInfo] are used to
  /// derive the [Wallet].
  Future<Wallet> restoreWallet({
    required ISecretStorage secretStorage,
    required String secureStorageKey,
    required NetworkInfo networkInfo,
  }) async {
    final mnemonic = await fetchMnemonic(
      secretStorage: secretStorage,
      secureStorageKey: secureStorageKey,
    );

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
  Future<Wallet> generateNewWallet({
    required NetworkInfo networkInfo,
    String? mnemonic,
    String? lastDerivationPathSegment,
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
  Future<Wallet> deriveWallet({
    required NetworkInfo networkInfo,
    required String mnemonic,
    String? lastDerivationPathSegment,
  }) {
    return compute(
      computeWallet,
      ComputeWalletData(
        mnemonic: mnemonic,
        networkInfo: networkInfo,
        lastDerivationPathSegment: lastDerivationPathSegment,
      ),
    );
  }

  /// Generate a pairwise [Wallet] from the given [networkInfo] and [mnemonic].
  /// The [lastDerivationPathSegment] parameter determines the wallet
  /// generated.
  ///
  /// Some valid [lastDerivationPathSegment] values are: '1', '2' and so on.
  Future<Wallet> generatePairwiseWallet({
    required NetworkInfo networkInfo,
    required String mnemonic,
    required String lastDerivationPathSegment,
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
  Future<AccountRequestResponse> requestFreeTokens({
    required String walletAddress,
    String amount = '100000000',
    HttpHelper? httpHelper,
  }) async {
    if (int.tryParse(amount) == null) {
      return const AccountRequestError('Amount is not a valid integer');
    }

    httpHelper ??= HttpHelper();

    Response response;
    try {
      response = await httpHelper.faucetRequest(
        path: HttpPath.give,
        data: {
          'addr': walletAddress,
          'amount': amount,
        },
      );
    } catch (e) {
      throw AccountRequestError(e.toString());
    }

    return AccountRequestSuccess(response.body);
  }

  /// Get the account balance of the wallet [walletAddress] using the optional
  /// [httpHelper].
  ///
  /// Returns a list of [StdCoin] or an [AccountRequestError] is thrown.
  Future<List<StdCoin>> checkAccountBalance({
    required String walletAddress,
    HttpHelper? httpHelper,
  }) async {
    httpHelper ??= HttpHelper();

    Response response;
    try {
      response = await httpHelper.getRequest(
        endpoint: HttpEndpoint.balance,
        walletAddress: walletAddress,
      );
    } catch (e) {
      throw AccountRequestError(e.toString());
    }

    if (response.statusCode != 200) {
      throw Exception(
        'Error: ${response.reasonPhrase} (${response.statusCode}): ${response.body}',
      );
    }

    final balanceFullResult = BalanceFullResult.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );

    return balanceFullResult.stdCoins;
  }

  /// Send the [amount] of tokens from the [senderWallet] to a
  /// [recipientAddress] list.
  ///
  /// An optional [fee] and [mode] can be specified.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> sendTokens({
    required WalletWithAddress senderWallet,
    required List<String> recipientAddresses,
    required List<StdCoin> amount,
    StdFee? fee,
    BroadcastingMode? mode,
  }) async {
    final msgs = recipientAddresses
        .map((addr) => MsgSend(
              amount: amount,
              fromAddress: senderWallet.address,
              toAddress: addr,
            ))
        .toList();

    return TxHelper.createSignAndSendTx(
      msgs,
      senderWallet.wallet,
      fee: fee,
      mode: mode,
    );
  }
}

/// Represent a balance response
class BalanceFullResult {
  final String height;
  final List<StdCoin> stdCoins;

  const BalanceFullResult({required this.height, required this.stdCoins});

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
  final String? lastDerivationPathSegment;

  const ComputeWalletData({
    required this.mnemonic,
    required this.networkInfo,
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
  return Bip39.generateMnemonic(strength: data.strength);
}

/// Derive a walllet from the [data].
Wallet computeWallet(ComputeWalletData data) {
  if (data.lastDerivationPathSegment == null) {
    return Wallet.derive(
      data.mnemonic.split(' '),
      data.networkInfo,
    );
  }

  return Wallet.derive(
    data.mnemonic.split(' '),
    data.networkInfo,
    lastDerivationPathSegment: data.lastDerivationPathSegment ?? '0',
  );
}
