import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/foundation.dart' hide Key;

/// The [StatefulCommercioDocs] allows you to send a document to another user,
/// and retrieve the list of documents that you have received.
class StatefulCommercioDocs {
  final StatefulCommercioAccount commercioAccount;
  final StatelessCommercioDocs statelessHandler;

  /// Creates a [StatefulCommercioDocs] with [commercioAccount].
  StatefulCommercioDocs({
    @required this.commercioAccount,
    this.statelessHandler = const StatelessCommercioDocs(),
  });

  /// Returns the [CommercioDoc] from the given data.
  ///
  /// The document associated with the given [metadata] and having the
  /// optional [contentUri], [doSign] and [checksum] from the [senderWallet] to
  /// the [recipients] list of addresses.
  /// The [encryptedData] are encrypted with an optional [aesKey].
  /// If no [aesKey] is provided a new one is generated.
  ///
  /// The [docId] should be a valid UUID v4, if it's not specified a new one
  /// is generated.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<CommercioDoc> deriveCommercioDocument({
    @required CommercioDocMetadata metadata,
    @required List<String> recipients,
    String docId,
    String contentUri,
    CommercioDoSign doSign,
    CommercioDocChecksum checksum,
    List<EncryptedData> encryptedData,
    Key aesKey,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return statelessHandler.deriveCommercioDocument(
      wallet: commercioAccount.wallet,
      metadata: metadata,
      recipients: recipients,
      docId: docId,
      contentUri: contentUri,
      doSign: doSign,
      checksum: checksum,
      encryptedData: encryptedData,
      aesKey: aesKey,
    );
  }

  /// Share the list of [CommercioDoc] from the [wallet].
  /// An optional [fee] and [mode] can be specified.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> shareDocuments({
    @required List<CommercioDoc> commercioDocs,
    StdFee fee,
    BroadcastingMode mode,
  }) async {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return statelessHandler.shareDocuments(
      wallet: commercioAccount.wallet,
      commercioDocs: commercioDocs,
      fee: fee,
      mode: mode,
    );
  }

  /// Returns a [CommercioDocReceipt] which tells the [recipient] that the
  /// document having the specified [documentId] and present inside the
  /// transaction with [txHash] has been properly seen.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  ///
  /// An optiona [proof] of reading can be specified.
  CommercioDocReceipt deriveReceipt({
    @required String recipient,
    @required String txHash,
    @required String documentId,
    String proof = '',
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return statelessHandler.deriveReceipt(
      wallet: commercioAccount.wallet,
      recipient: recipient,
      txHash: txHash,
      documentId: documentId,
      proof: proof,
    );
  }

  /// Send a list of receipts [commercioDocReceipts].
  /// An optional [fee] and [mode] can be specified.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> sendReceipts({
    @required List<CommercioDocReceipt> commercioDocReceipts,
    StdFee fee,
    BroadcastingMode mode,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return statelessHandler.sendReceipts(
      commercioDocReceipts: commercioDocReceipts,
      wallet: commercioAccount.wallet,
      fee: fee,
      mode: mode,
    );
  }

  /// Returns the list of [CommercioDoc] sent by [walletAddress].
  ///
  /// An optional [HttpHelper] can be specified.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<List<CommercioDoc>> sentDocuments({
    @required String walletAddress,
  }) {
    return statelessHandler.sentDocuments(
      walletAddress: walletAddress,
      httpHelper: commercioAccount.httpHelper,
    );
  }

  /// Returns the list of [CommercioDoc] sent by [walletAddress].
  ///
  /// An optional [HttpHelper] can be specified.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<List<CommercioDoc>> receivedDocuments({
    @required String walletAddress,
  }) {
    return statelessHandler.receivedDocuments(
      walletAddress: walletAddress,
      httpHelper: commercioAccount.httpHelper,
    );
  }

  /// Returns the list of [CommercioDoc] received by [walletAddress].
  ///
  /// An optional [HttpHelper] can be specified.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<List<CommercioDocReceipt>> sentReceipts({
    @required String walletAddress,
  }) {
    return statelessHandler.sentReceipts(
      walletAddress: walletAddress,
      httpHelper: commercioAccount.httpHelper,
    );
  }

  /// Returns the list of [CommercioDocReceipt] sent by [walletAddress].
  ///
  /// An optional [HttpHelper] can be specified.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<List<CommercioDocReceipt>> receivedReceipts({
    @required String walletAddress,
  }) {
    return statelessHandler.receivedReceipts(
      walletAddress: walletAddress,
      httpHelper: commercioAccount.httpHelper,
    );
  }
}
