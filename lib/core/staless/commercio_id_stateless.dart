import 'dart:convert';

import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/core/utils/utils.dart';
import 'package:commercio_ui/data/data.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

/// The [StatelessCommercioId] module allows to create a new identity and
/// associate to it a Did Document.
abstract class StatelessCommercioId {
  /// Returns new generated [CommercioIdKeys] that cointains two RSA keys pair,
  /// one pair for verification and another for signature.
  static Future<CommercioIdKeys> generateKeys() async {
    final rsaVerificationPair = await KeysHelper.generateRsaKeyPair(
      type: 'RsaVerificationKey2018',
    );
    final rsaSignatureKeyPair = await KeysHelper.generateRsaKeyPair(
      type: 'RsaSignatureKey2018',
    );

    return CommercioIdKeys(
      rsaVerificationPair: rsaVerificationPair,
      rsaSignatureKeyPair: rsaSignatureKeyPair,
    );
  }

  /// Get the [CommercioIdKeys] stored inside [secureStorage] and identified by
  /// [secureStorageKey].
  static Future<CommercioIdKeys> restoreKeys({
    @required ISecretStorage secretStorage,
    @required String secureStorageKey,
  }) {
    return fetchKeys(
      secretStorage: secretStorage,
      secureStorageKey: secureStorageKey,
    );
  }

  /// Save [idKeys] inside the [secureStorage] identified by [secureStorageKey].
  static Future<void> storeKeys({
    @required ISecretStorage secretStorage,
    @required String secureStorageKey,
    @required CommercioIdKeys idKeys,
  }) {
    return secretStorage.write(
      key: secureStorageKey,
      value: jsonEncode(idKeys),
    );
  }

  /// Get the [CommercioIdKeys] stored inside [secureStorage] and identified by
  /// [secureStorageKey].
  static Future<CommercioIdKeys> fetchKeys({
    @required ISecretStorage secretStorage,
    @required String secureStorageKey,
  }) async {
    final rawKeys = await secretStorage.read(key: secureStorageKey);

    if (rawKeys == null) {
      return null;
    }

    return CommercioIdKeys.fromJson(
      jsonDecode(rawKeys) as Map<String, dynamic>,
    );
  }

  /// Delete the [CommercioIdKeys] inside the [secureStorage] identified by
  /// [secureStorageKey].
  static Future<void> deleteKeys({
    @required ISecretStorage secretStorage,
    @required String secureStorageKey,
  }) {
    return secretStorage.delete(key: secureStorageKey);
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
      service: service,
    );
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
  static Future<TransactionResult> rechargeTumbler({
    @required WalletWithAddress walletWithAddress,
    @required List<StdCoin> rechargeAmount,
    List<StdCoin> rechargeFee,
    String rechargeGas,
    HttpHelper httpHelper,
  }) async {
    httpHelper ??= HttpHelper();

    final tumblerAddress = await httpHelper.getTumblerAddress();

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
      senderWallet,
      pairwiseAddress,
      amount,
      rsaSignaturePrivateKey,
    );
  }
}
