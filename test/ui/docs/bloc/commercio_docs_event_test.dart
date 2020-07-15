import 'dart:io';

import 'package:commercio_ui/ui/docs/bloc/docs_bloc.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  final metadata = CommercioDocMetadata(
    contentUri: 'contentUri',
    schemaType: 'schemaType',
  );
  const recipients = ['recipient'];
  const docId = 'docId';
  final doSign = CommercioDoSign(
    certificateProfile: 'certificateProfile',
    signerIstance: 'signerIstance',
    storageUri: 'storageUri',
    vcrId: 'vcrId',
  );
  final checksum = CommercioDocChecksum(
    algorithm: CommercioDocChecksumAlgorithm.SHA256,
    value: 'value',
  );
  const contentUri = 'contentUri';
  const encryptedData = <EncryptedData>[];
  const aesKey = null;
  const senderDid = 'senderDid';
  const fee = StdFee(amount: <StdCoin>[], gas: 'gas');
  final correctCommercioDoc = CommercioDoc(
    uuid: 'uuid',
    metadata: metadata,
    recipientDids: recipients,
    senderDid: senderDid,
  );
  final correctDocReceipt = CommercioDocReceipt(
    uuid: 'uuid',
    senderDid: 'sender',
    recipientDid: 'recipient',
    txHash: 'txHash',
    documentUuid: 'docId',
  );

  test('CommercioDocsDeriveDocumentEvent', () {
    final event = CommercioDocsDeriveDocumentEvent(
      metadata: metadata,
      recipients: recipients,
      docId: docId,
      doSign: doSign,
      checksum: checksum,
      contentUri: contentUri,
      encryptedData: encryptedData,
      aesKey: aesKey,
    );

    expect(event.props, [
      metadata,
      recipients,
      docId,
      contentUri,
      doSign,
      checksum,
      encryptedData,
      aesKey,
    ]);
  });

  test('CommercioDocsShareDocumentsEvent', () {
    final event = CommercioDocsShareDocumentsEvent(
      commercioDocs: [correctCommercioDoc],
      fee: fee,
    );

    expect(event.props, [
      [correctCommercioDoc],
      fee,
    ]);
  });

  test('CommercioDocsDeriveReceiptEvent', () {
    const recipient = 'recipient';
    const docId = 'docId';
    const txHash = 'txHash';
    const proof = 'proof';

    final event = CommercioDocsDeriveReceiptEvent(
      documentId: docId,
      recipient: recipient,
      txHash: txHash,
      proof: proof,
    );

    expect(event.props, [recipient, txHash, docId, proof]);
  });

  test('CommercioDocsSendReceiptsEvent', () {
    const fee = StdFee(
      amount: [StdCoin(denom: 'denom', amount: '10')],
      gas: '10',
    );

    final event = CommercioDocsSendReceiptsEvent(
      commercioDocReceipts: [correctDocReceipt],
      fee: fee,
    );

    expect(event.props, [
      [correctDocReceipt],
      fee
    ]);
  });

  test('CommercioDocsSentDocumentsEvent', () {
    const walletAddress = '';

    final event = const CommercioDocsSentDocumentsEvent(
      walletAddress: walletAddress,
    );

    expect(event.props, [walletAddress]);
  });

  test('CommercioDocsReceivedDocumentsEvent', () {
    const walletAddress = '';
    final event = const CommercioDocsReceivedDocumentsEvent(
      walletAddress: walletAddress,
    );

    expect(event.props, [walletAddress]);
  });

  test('CommercioDocsSentReceiptsEvent', () {
    const walletAddress = '';
    final event = const CommercioDocsSentReceiptsEvent(
      walletAddress: walletAddress,
    );

    expect(event.props, [walletAddress]);
  });

  test('CommercioDocsReceivedReceiptsEvent', () {
    const walletAddress = '';
    final event = const CommercioDocsReceivedReceiptsEvent(
      walletAddress: walletAddress,
    );

    expect(event.props, [walletAddress]);
  });

  test('CommercioDocsChangeEncryptedData', () {
    const encryptedDataKey = EncryptedData.CONTENT_URI;
    const newValue = true;

    final event = const CommercioDocsChangeEncryptedData(
      encryptedDataKey: encryptedDataKey,
      newValue: newValue,
    );

    expect(event.props, [encryptedDataKey, newValue]);
  });
}
