import 'dart:convert';

import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/src/core/utils/utils.dart';
import 'package:commercio_ui/src/data/data.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/foundation.dart';

/// The [StatelessCommercioId] module allows to create a new identity and
/// associate it to a Did Document.
class StatelessCommercioId {
  const StatelessCommercioId();

  /// Returns new generated [CommercioIdKeys] that cointains two RSA keys pair,
  /// one pair for verification and another for signature.
  Future<CommercioIdKeys> generateKeys() {
    return compute(computeNewKeyPair, const GenerateKeysData());
  }

  /// Get the [CommercioIdKeys] stored inside [secureStorage] and identified by
  /// [secureStorageKey].
  Future<CommercioIdKeys> restoreKeys({
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

  /// Save [idKeys] inside the [secureStorage] identified by [secureStorageKey].
  Future<void> storeKeys({
    @required ISecretStorage secretStorage,
    @required String secureStorageKey,
    @required CommercioIdKeys idKeys,
  }) {
    return secretStorage.write(
      key: secureStorageKey,
      value: jsonEncode(idKeys),
    );
  }

  /// Delete the [CommercioIdKeys] inside the [secureStorage] identified by
  /// [secureStorageKey].
  Future<void> deleteKeys({
    @required ISecretStorage secretStorage,
    @required String secureStorageKey,
  }) {
    return secretStorage.delete(key: secureStorageKey);
  }

  /// Derive a [DidDocument] from the given [wallet], [idKeys] and optional
  /// [service].
  Future<DidDocument> deriveDidDocument({
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

  /// Associate the list of [didDocument] to the [wallet] identity.
  /// An optional [fee] and [mode] can be specified.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> setDidDocuments({
    @required List<DidDocument> didDocuments,
    @required Wallet wallet,
    StdFee fee,
    BroadcastingMode mode,
  }) async {
    return IdHelper.setDidDocumentsList(
      didDocuments,
      wallet,
      fee: fee,
      mode: mode,
    );
  }

  /// Sent the [amount] to the centralized entity Tk (tumbler) from
  /// the [walletWithAddress]. Only avaiable in a testnet.
  ///
  /// An optional [fee], [mode] and [httpHelper] can
  /// be specified.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> rechargeTumbler({
    @required WalletWithAddress walletWithAddress,
    @required List<StdCoin> amount,
    StdFee fee,
    BroadcastingMode mode,
    HttpHelper httpHelper,
  }) async {
    httpHelper ??= HttpHelper();

    final tumblerAddress = await httpHelper.getTumblerAddress();

    return StatelessCommercioAccount().sendTokens(
      senderWallet: walletWithAddress,
      recipientAddress: tumblerAddress,
      amount: amount,
      fee: fee,
      mode: mode,
    );
  }

  /// Derive and returns a [RequestDidPowerUp] object from the [wallet],
  /// [pairwiseAddress], [amount] and [rsaSignaturePrivateKey].
  ///
  /// In general [pairwiseAddress] is obtained generating it from the [wallet].
  Future<RequestDidPowerUp> deriveDidPowerUpRequest({
    @required Wallet wallet,
    @required String pairwiseAddress,
    @required List<StdCoin> amount,
    @required RSAPrivateKey rsaSignaturePrivateKey,
  }) {
    return RequestDidPowerUpHelper.fromWallet(
      wallet,
      pairwiseAddress,
      amount,
      rsaSignaturePrivateKey,
    );
  }

  /// Request a list of Did Power Up from [senderWallet] for every power up
  /// request in [powerUpRequests].
  /// An optional [fee] and [mode] can be specified.
  ///
  /// A did power up request is required to move the amount of
  /// tokens from a centralized entity Tk to one of its pairwiseAddress,
  /// using the rsaSignaturePrivateKey.
  ///
  /// A Did Power Up is required to send documents.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> requestDidPowerUps({
    @required Wallet senderWallet,
    @required List<RequestDidPowerUp> powerUpRequests,
    StdFee fee,
    BroadcastingMode mode,
  }) async {
    return IdHelper.requestDidPowerUpsList(
      powerUpRequests,
      senderWallet,
      fee: fee,
      mode: mode,
    );
  }
}

/// Helper plain data object to send data to [compute()] function.
class GenerateKeysData {
  const GenerateKeysData();
}

/// Returns a new [CommercioIdKeys].
Future<CommercioIdKeys> computeNewKeyPair(
  GenerateKeysData data,
) async {
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
