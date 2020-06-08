import 'dart:convert';

import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/core/utils/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart';

class StatelessCommercioId {
  /// Returns new generated [CommercioIdKeys] that cointains two RSA keys pair,
  /// one pair for verification and another for signature.
  static Future<CommercioIdKeys> generateKeys() async {
    final rsaVerificationPair = await KeysHelper.generateRsaKeyPair();
    final rsaSignatureKeyPair =
        await KeysHelper.generateRsaKeyPair(type: 'RsaSignatureKey2018');

    return CommercioIdKeys(
        rsaVerificationPair: rsaVerificationPair,
        rsaSignatureKeyPair: rsaSignatureKeyPair);
  }

  /// Get the [CommercioIdKeys] stored inside [secureStorage] and identified by
  /// [secureStorageKey].
  static Future<CommercioIdKeys> restoreKeys({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
  }) {
    return fetchKeys(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);
  }

  /// Save [idKeys] inside the [secureStorage] identified by [secureStorageKey].
  static Future<void> storeKeys({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
    @required CommercioIdKeys idKeys,
  }) {
    return secureStorage.write(
        key: secureStorageKey, value: jsonEncode(idKeys));
  }

  /// Get the [CommercioIdKeys] stored inside [secureStorage] and identified by
  /// [secureStorageKey].
  static Future<CommercioIdKeys> fetchKeys({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
  }) async {
    final rawKeys = await secureStorage.read(key: secureStorageKey);

    return CommercioIdKeys.fromJson(
        jsonDecode(rawKeys) as Map<String, dynamic>);
  }

  /// Delete the [CommercioIdKeys] inside the [secureStorage] identified by
  /// [secureStorageKey].
  static Future<void> deleteKeys({
    @required FlutterSecureStorage secureStorage,
    @required String secureStorageKey,
  }) {
    return secureStorage.delete(key: secureStorageKey);
  }

  /// Derive a [DidDocument] from the given [wallet], [idKeys] and optional
  /// [service].
  static Future<DidDocument> derivateDidDocument({
    @required Wallet wallet,
    @required CommercioIdKeys idKeys,
    List<DidDocumentService> service,
  }) async {
    return DidDocumentHelper.fromWallet(
        wallet,
        [
          idKeys.rsaVerificationPair.publicKey,
          idKeys.rsaSignatureKeyPair.publicKey,
        ],
        service: service);
  }

  /// Associate [didDocument] to your [wallet] identity. An optional [fee]
  /// can be specified.
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> setDidDocument({
    @required DidDocument didDocument,
    @required Wallet wallet,
    StdFee fee,
  }) async {
    return IdHelper.setDidDocument(didDocument, wallet, fee: fee);
  }

  /// Sent the [rechargeAmount] to the centralized entity Tk (tumbler) from
  /// the [walletWithAddress]. Only avaiable in a testnet.
  ///
  /// An optional amount of [rechargeFee], [rechargeGas] and [httpHelper] can
  /// be specified.
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> rechargeGovernment({
    @required WalletWithAddress walletWithAddress,
    @required List<StdCoin> rechargeAmount,
    List<StdCoin> rechargeFee,
    String rechargeGas,
    HttpHelper httpHelper,
  }) async {
    final tumblerAddress = await httpHelper.getGovernmentAddress();

    return StatelessCommercioAccount.sendTokens(
      senderAddress: walletWithAddress.address,
      senderWallet: walletWithAddress.wallet,
      recipientAddress: tumblerAddress,
      amount: rechargeAmount,
      feeAmount: rechargeFee,
      gas: rechargeGas,
    );
  }

  /// Request a Did Power Up from [senderWallet] to move the [amount] of
  /// tokens from a centralized entity Tk to one of its [pairwiseAddress],
  /// using the [rsaSignaturePrivateKey].
  /// A Did Power Up is required to send documents.
  ///
  /// Returns the [TransactionResult].
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
