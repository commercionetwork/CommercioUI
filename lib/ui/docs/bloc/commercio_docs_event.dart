import 'package:commerciosdk/export.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class CommercioDocsEvent extends Equatable {
  const CommercioDocsEvent();
}

class CommercioDocsShareDocumentEvent extends CommercioDocsEvent {
  final CommercioDocMetadata metadata;
  final List<String> recipients;
  final String docId;
  final CommercioDoSign doSign;
  final CommercioDocChecksum checksum;
  final String contentUri;
  final StdFee fee;

  const CommercioDocsShareDocumentEvent({
    @required this.metadata,
    @required this.recipients,
    this.docId,
    this.doSign,
    this.checksum,
    this.contentUri,
    this.fee,
  });

  @override
  List<Object> get props =>
      [metadata, recipients, docId, doSign, checksum, contentUri, fee];
}

class CommercioDocsShareEncryptedDocumentEvent extends CommercioDocsEvent {
  final CommercioDocMetadata metadata;
  final List<String> recipients;
  final Key aesKey;
  final List<EncryptedData> encryptedData;
  final String docId;
  final CommercioDoSign doSign;
  final CommercioDocChecksum checksum;
  final String contentUri;
  final StdFee fee;

  const CommercioDocsShareEncryptedDocumentEvent({
    @required this.metadata,
    @required this.recipients,
    @required this.aesKey,
    @required this.encryptedData,
    this.docId,
    this.doSign,
    this.checksum,
    this.contentUri,
    this.fee,
  });

  @override
  List<Object> get props => [
        metadata,
        recipients,
        aesKey,
        encryptedData,
        docId,
        doSign,
        checksum,
        contentUri,
        fee
      ];
}

class CommercioDocsSendReceiptEvent extends CommercioDocsEvent {
  final String recipient;
  final String txHash;
  final String docId;

  const CommercioDocsSendReceiptEvent({
    @required this.recipient,
    @required this.txHash,
    @required this.docId,
  });

  @override
  List<Object> get props => [recipient, txHash, docId];
}

class CommercioDocsSentDocumentsEvent extends CommercioDocsEvent {
  const CommercioDocsSentDocumentsEvent();

  @override
  List<Object> get props => [];
}

class CommercioDocsReceivedDocumentsEvent extends CommercioDocsEvent {
  const CommercioDocsReceivedDocumentsEvent();

  @override
  List<Object> get props => [];
}
