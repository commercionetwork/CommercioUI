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

class StatelessCommercioAccount {
  static Future<String> generateMnemonic() {
    return compute(computeMnemonic, const ComputeMnemonicData(256));
  }

  static Future<void> storeMnemonic({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
    @required String mnemonic,
  }) {
    return secureStorage.write(key: secureStorageKey, value: mnemonic);
  }

  static Future<String> fetchMnemonic({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
  }) {
    return secureStorage.read(key: secureStorageKey);
  }

  static Future<void> deleteMnemonic({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
  }) {
    return secureStorage.delete(key: secureStorageKey);
  }

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

  /// Generate a new [Wallet] associated with the given works and the optional [networkInfo].
  ///
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

  static Future<Wallet> generatePairwiseWallet({
    @required NetworkInfo networkInfo,
    String lastDerivationPathSegment,
    String newMnemonic,
  }) async {
    newMnemonic ??= await generateMnemonic();

    return generateNewWallet(
        networkInfo: networkInfo,
        mnemonic: newMnemonic,
        lastDerivationPathSegment: lastDerivationPathSegment);
  }

  static Future<AccountRequestResponse> requestFreeTokens({
    @required String walletAddress,
    String faucetDomain,
    String amount = '100000000',
  }) async {
    if (int.tryParse(amount) == null) {
      return const AccountRequestError('Amount is not a valid integer');
    }

    Response response;
    try {
      response = await HttpHelper.faucetRequest(
          path: HttpPath.give,
          faucetDomain: faucetDomain,
          data: {
            'addr': walletAddress,
            'amount': amount,
          });
    } catch (e) {
      return AccountRequestError(e.toString());
    }

    // TODO: Check response content

    return AccountRequestSuccess(response.body);
  }

  static Future<List<StdCoin>> checkAccountBalance({
    @required String walletAddress,
    @required String lcdUrl,
  }) async {
    Response response;
    try {
      response = await HttpHelper.getRequest(
          endpoint: HttpEndpoint.balance,
          walletAddress: walletAddress,
          lcdUrl: lcdUrl);
    } catch (e) {
      throw AccountRequestError(e.toString());
    }

    final balanceFullResult = BalanceFullResult.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);

    return balanceFullResult.stdCoins;
  }

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

class ComputeMnemonicData {
  final int strength;

  const ComputeMnemonicData(this.strength);
}

String computeMnemonic(ComputeMnemonicData data) {
  return bip39.generateMnemonic(strength: data.strength);
}

Wallet computeWallet(ComputeWalletData data) {
  if (data.lastDerivationPathSegment == null) {
    return Wallet.derive(data.mnemonic.split(' '), data.networkInfo);
  }

  return Wallet.derive(data.mnemonic.split(' '), data.networkInfo,
      lastDerivationPathSegment: data.lastDerivationPathSegment);
}
