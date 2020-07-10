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
    @required this.encryptedData,
    this.aesKey,
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
        encryptedData,
        aesKey,
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
  final String walletAddress;

  const CommercioDocsSentDocumentsEvent({
    @required this.walletAddress,
  });

  @override
  List<Object> get props => [walletAddress];
}

class CommercioDocsReceivedDocumentsEvent extends CommercioDocsEvent {
  final String walletAddress;

  const CommercioDocsReceivedDocumentsEvent({
    @required this.walletAddress,
  });

  @override
  List<Object> get props => [walletAddress];
}

class CommercioDocsSentReceiptsEvent extends CommercioDocsEvent {
  final String walletAddress;

  const CommercioDocsSentReceiptsEvent({
    @required this.walletAddress,
  });

  @override
  List<Object> get props => [walletAddress];
}

class CommercioDocsReceivedReceiptsEvent extends CommercioDocsEvent {
  final String walletAddress;

  const CommercioDocsReceivedReceiptsEvent({
    @required this.walletAddress,
  });

  @override
  List<Object> get props => [walletAddress];
}

abstract class CommercioDocsEncDataEvent extends Equatable {
  const CommercioDocsEncDataEvent();
}

class CommercioDocsChangeEncryptedData extends CommercioDocsEncDataEvent {
  final EncryptedData encryptedDataKey;
  final bool newValue;

  const CommercioDocsChangeEncryptedData({
    @required this.encryptedDataKey,
    @required this.newValue,
  });

  @override
  List<Object> get props => [encryptedDataKey, newValue];
}
