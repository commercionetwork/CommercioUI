import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

/// The [StatelessCommercioDocs] allows you to send a document to another user,
/// and retrieve the list of documents that you have received.
abstract class StatelessCommercioDocs {
  /// Share the document associated with the given [metadata] and having the
  /// optional [contentUri], [doSign] and [checksum] from the [senderWallet] to
  /// the [recipients] list of addresses.
  /// The [docId] should be a valid UUID v5, if it's not specified a new one
  /// is generated.
  /// An optional [fee] can be specified.
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> shareDocument({
    @required Wallet senderWallet,
    @required CommercioDocMetadata metadata,
    @required List<String> recipients,
    String docId,
    CommercioDoSign doSign,
    CommercioDocChecksum checksum,
    String contentUri,
    StdFee fee,
  }) async {
    return shareEncryptedDocument(
      wallet: senderWallet,
      metadata: metadata,
      recipients: recipients,
      aesKey: null,
      encryptedData: null,
      docId: docId,
      doSign: doSign,
      checksum: checksum,
      contentUri: contentUri,
      fee: fee,
    );
  }

  /// Share the document associated with the given [metadata] and having the
  /// optional [contentUri], [doSign] and [checksum] from the [senderWallet] to
  /// the [recipients] list of addresses.
  /// The [encryptedData] are encrypted with an optional [aesKey].
  /// If no [aesKey] is provided a new one is generated.
  ///
  /// The [docId] should be a valid UUID v5, if it's not specified a new one
  /// is generated.
  /// An optional [fee] can be specified.
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> shareEncryptedDocument({
    @required Wallet wallet,
    @required CommercioDocMetadata metadata,
    @required List<String> recipients,
    @required List<EncryptedData> encryptedData,
    Key aesKey,
    String docId,
    CommercioDoSign doSign,
    CommercioDocChecksum checksum,
    String contentUri,
    StdFee fee,
  }) {
    final id = docId ?? Uuid().v4();

    return DocsHelper.shareDocument(
      id: id,
      metadata: metadata,
      recipients: recipients,
      wallet: wallet,
      doSign: doSign,
      checksum: checksum,
      contentUri: contentUri,
      aesKey: aesKey,
      encryptedData: encryptedData,
      fee: fee,
    );
  }

  /// Send a receipt which tells the [recipient] that the document from
  /// identified by [docId] in transaction [txHash] was read by [senderWallet].
  ///
  /// An optional reading [proof] can be specified and also a custom [fee].
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> sendReceipt({
    @required Wallet senderWallet,
    @required String recipient,
    @required String txHash,
    @required String docId,
    String proof = "",
    StdFee fee,
  }) {
    return DocsHelper.sendDocumentReceipt(
      recipient: recipient,
      txHash: txHash,
      documentId: docId,
      wallet: senderWallet,
      proof: proof,
      fee: fee,
    );
  }

  /// Returns the list of [CommercioDoc] sent from [walletWithAddress].
  static Future<List<CommercioDoc>> sentDocuments({
    @required WalletWithAddress walletWithAddress,
  }) async {
    return DocsHelper.getSendDocuments(
      walletWithAddress.address,
      walletWithAddress.wallet,
    );
  }

  /// Returns the list of [CommercioDoc] received by [walletWithAddress].
  static Future<List<CommercioDoc>> receivedDocuments({
    @required WalletWithAddress walletWithAddress,
  }) async {
    return DocsHelper.getReceivedDocuments(
      walletWithAddress.address,
      walletWithAddress.wallet,
    );
  }

  /// Returns the list of [CommercioDocReceipt] sent from [walletWithAddress].
  static Future<List<CommercioDocReceipt>> sentReceipts({
    @required WalletWithAddress walletWithAddress,
  }) async {
    return DocsHelper.getSentReceipts(
      walletWithAddress.address,
      walletWithAddress.wallet,
    );
  }

  /// Returns the list of [CommercioDocReceipt] received by
  /// [walletWithAddress].
  static Future<List<CommercioDocReceipt>> receivedReceipts({
    @required WalletWithAddress walletWithAddress,
  }) async {
    return DocsHelper.getReceivedReceipts(
      walletWithAddress.address,
      walletWithAddress.wallet,
    );
  }
}
