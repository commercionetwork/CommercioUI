import 'dart:convert';

import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

/// The [StatelessCommercioDocs] allows you to send a document to another user,
/// and retrieve the list of documents that you have received.
abstract class StatelessCommercioDocs {
  /// Returns the [CommercioDoc] from the given [wallet] and data.
  ///
  /// The document associated with the given [metadata] and having the
  /// optional [contentUri], [doSign] and [checksum] from the [senderWallet] to
  /// the [recipients] list of addresses.
  /// The [encryptedData] are encrypted with an optional [aesKey].
  /// If no [aesKey] is provided a new one is generated.
  ///
  /// The [docId] should be a valid UUID v4, if it's not specified a new one
  /// is generated.
  static Future<CommercioDoc> deriveCommercioDocument({
    @required Wallet wallet,
    @required CommercioDocMetadata metadata,
    @required List<String> recipients,
    String docId,
    String contentUri,
    CommercioDoSign doSign,
    CommercioDocChecksum checksum,
    List<EncryptedData> encryptedData,
    Key aesKey,
  }) {
    final id = docId ?? Uuid().v4();

    return CommercioDocHelper.fromWallet(
      wallet: wallet,
      recipients: recipients,
      id: id,
      metadata: metadata,
      checksum: checksum,
      contentUri: contentUri,
      doSign: doSign,
      encryptedData: encryptedData,
      aesKey: aesKey,
    );
  }

  /// Share the list of [CommercioDoc] from the [wallet].
  /// An optional [fee] can be specified.
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> shareDocuments({
    @required Wallet wallet,
    @required List<CommercioDoc> commercioDocs,
    StdFee fee,
  }) async {
    return DocsHelper.shareDocumentsList(commercioDocs, wallet, fee: fee);
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

  /// Returns the list of [CommercioDoc] sent by [walletAddress].
  ///
  /// An optional [HttpHelper] can be specified.
  static Future<List<CommercioDoc>> sentDocuments({
    @required String walletAddress,
    HttpHelper httpHelper,
  }) async {
    httpHelper ??= HttpHelper();

    Response response;
    try {
      response = await httpHelper.getRequest(
        endpoint: HttpEndpoint.sentDocs,
        walletAddress: walletAddress,
      );
    } catch (e) {
      throw Exception('Network error: $e');
    }

    if (response.statusCode != 200) {
      throw Exception('${response.statusCode}: ${response.body}');
    }

    final docs = jsonDecode(response.body)['result'] as List;

    return docs.map((doc) => CommercioDoc.fromJson(doc)).toList();
  }

  /// Returns the list of [CommercioDoc] received by [walletAddress].
  ///
  /// An optional [HttpHelper] can be specified.
  static Future<List<CommercioDoc>> receivedDocuments({
    @required String walletAddress,
    HttpHelper httpHelper,
  }) async {
    httpHelper ??= HttpHelper();

    Response response;
    try {
      response = await httpHelper.getRequest(
        endpoint: HttpEndpoint.receivedDocs,
        walletAddress: walletAddress,
      );
    } catch (e) {
      throw Exception('Network error: $e');
    }

    if (response.statusCode != 200) {
      throw Exception('${response.statusCode}: ${response.body}');
    }

    final docs = jsonDecode(response.body)['result'] as List;

    return docs.map((doc) => CommercioDoc.fromJson(doc)).toList();
  }

  /// Returns the list of [CommercioDocReceipt] sent by [walletAddress].
  ///
  /// An optional [HttpHelper] can be specified.
  static Future<List<CommercioDocReceipt>> sentReceipts({
    @required String walletAddress,
    HttpHelper httpHelper,
  }) async {
    httpHelper ??= HttpHelper();

    Response response;
    try {
      response = await httpHelper.getRequest(
        endpoint: HttpEndpoint.sentReceipts,
        walletAddress: walletAddress,
      );
    } catch (e) {
      throw Exception('Network error: $e');
    }

    if (response.statusCode != 200) {
      throw Exception('${response.statusCode}: ${response.body}');
    }

    final receipts = jsonDecode(response.body)['result'] as List;

    return receipts
        .map((receipt) => CommercioDocReceipt.fromJson(receipt))
        .toList();
  }

  /// Returns the list of [CommercioDocReceipt] received by [walletAddress].
  ///
  /// An optional [HttpHelper] can be specified.
  static Future<List<CommercioDocReceipt>> receivedReceipts({
    @required String walletAddress,
    HttpHelper httpHelper,
  }) async {
    httpHelper ??= HttpHelper();

    Response response;
    try {
      response = await httpHelper.getRequest(
        endpoint: HttpEndpoint.receivedReceipts,
        walletAddress: walletAddress,
      );
    } catch (e) {
      throw Exception('Network error: $e');
    }

    if (response.statusCode != 200) {
      throw Exception('${response.statusCode}: ${response.body}');
    }

    final receipts = jsonDecode(response.body)['result'] as List;

    return receipts
        .map((receipt) => CommercioDocReceipt.fromJson(receipt))
        .toList();
  }
}
