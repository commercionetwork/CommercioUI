import 'dart:convert';

import 'package:commercio_ui/core/utils/export.dart';
import 'package:commercio_ui/entities/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

class StatelessCommercioDocs {
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

  static Future<TransactionResult> shareEncryptedDocument({
    @required Wallet wallet,
    @required CommercioDocMetadata metadata,
    @required List<String> recipients,
    @required Key aesKey,
    @required List<EncryptedData> encryptedData,
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

  static Future<TransactionResult> sendReceipt({
    @required Wallet senderWallet,
    @required String recipient,
    @required String txHash,
    @required String docId,
  }) {
    return DocsHelper.sendDocumentReceipt(
      recipient: recipient,
      txHash: txHash,
      documentId: docId,
      wallet: senderWallet,
    );
  }

  static Future<List<CommercioDoc>> sentDocuments({
    @required WalletWithAddress walletWithAddress,
  }) async {
    final response = await HttpHelper.getRequest(
        endpoint: HttpEndpoint.sentDocs,
        walletAddress: walletWithAddress.address,
        lcdUrl: walletWithAddress.wallet.networkInfo.lcdUrl);

    if (response.statusCode != 200) {
      throw Exception(
          'Network error: { code: ${response.statusCode}, reason: ${response.reasonPhrase} }');
    }

    if (response.body.isEmpty) {
      return [];
    }

    final documentsRaw = jsonDecode(response.body) as Map<String, dynamic>;
    final documentsRawResult = documentsRaw['result'] as List;

    return documentsRawResult
        .map((json) => CommercioDoc.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  static Future<List<CommercioDoc>> receivedDocuments({
    @required WalletWithAddress walletWithAddress,
  }) async {
    final response = await HttpHelper.getRequest(
        endpoint: HttpEndpoint.receivedDocs,
        walletAddress: walletWithAddress.address,
        lcdUrl: walletWithAddress.wallet.networkInfo.lcdUrl);

    if (response.statusCode != 200) {
      throw Exception(
          'Network error: { code: ${response.statusCode}, reason: ${response.reasonPhrase} }');
    }

    if (response.body.isEmpty) {
      return [];
    }

    final documentsRaw = jsonDecode(response.body) as Map<String, dynamic>;
    final documentsRawResult = documentsRaw['result'] as List;

    return documentsRawResult
        .map((json) => CommercioDoc.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
