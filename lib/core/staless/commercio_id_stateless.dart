import 'dart:convert';

import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/core/utils/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart';

class StatelessCommercioId {
  static Future<CommercioIdKeys> generateKeys() async {
    final rsaVerificationPair = await KeysHelper.generateRsaKeyPair();
    final rsaSignatureKeyPair =
        await KeysHelper.generateRsaKeyPair(type: 'RsaSignatureKey2018');

    return CommercioIdKeys(
        rsaVerificationPair: rsaVerificationPair,
        rsaSignatureKeyPair: rsaSignatureKeyPair);
  }

  static Future<CommercioIdKeys> restoreKeys({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
  }) {
    return fetchKeys(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);
  }

  static Future<void> storeKeys({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
    @required CommercioIdKeys idKeys,
  }) {
    return secureStorage.write(
        key: secureStorageKey, value: jsonEncode(idKeys));
  }

  static Future<CommercioIdKeys> fetchKeys({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
  }) async {
    final rawKeys = await secureStorage.read(key: secureStorageKey);

    return CommercioIdKeys.fromJson(
        jsonDecode(rawKeys) as Map<String, dynamic>);
  }

  static Future<void> deleteKeys({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
  }) {
    return secureStorage.delete(key: secureStorageKey);
  }

  static Future<DidDocument> derivateDidDocument({
    @required Wallet wallet,
    @required CommercioIdKeys idKeys,
  }) async {
    return DidDocumentHelper.fromWallet(wallet, [
      idKeys.rsaVerificationPair.publicKey,
      idKeys.rsaSignatureKeyPair.publicKey,
    ]);
  }

  static Future<TransactionResult> setDidDocument({
    @required DidDocument didDocument,
    @required Wallet wallet,
  }) async {
    return IdHelper.setDidDocument(didDocument, wallet);
  }

  static Future<TransactionResult> rechargeGovernment({
    @required WalletWithAddress walletWithAddress,
    @required List<StdCoin> rechargeAmount,
    List<StdCoin> rechargeFee,
    String rechargeGas,
  }) async {
    final tumblerAddress = await HttpHelper.getGovernmentAddress(
        lcdUrl: walletWithAddress.wallet.networkInfo.lcdUrl);

    return StatelessCommercioAccount.sendTokens(
      senderAddress: walletWithAddress.address,
      senderWallet: walletWithAddress.wallet,
      recipientAddress: tumblerAddress,
      amount: rechargeAmount,
      feeAmount: rechargeFee,
      gas: rechargeGas,
    );
  }

  static Future<TransactionResult> requestDidPowerUp({
    @required String pairwiseAddress,
    @required Wallet senderWallet,
    @required List<StdCoin> amount,
    @required RSAPrivateKey rsaSignaturePrivateKey,
  }) {
    return IdHelper.requestDidPowerUp(
        senderWallet, pairwiseAddress, amount, rsaSignaturePrivateKey);
  }
}
