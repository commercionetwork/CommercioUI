import 'package:commercio_ui/ui/docs/bloc/docs_bloc.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('CommercioDocsShareDocumentEvent', () {
    final metadata = CommercioDocMetadata(
      contentUri: 'contentUri',
      schemaType: 'schemaType',
    );
    const recipients = <String>[];
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
    const fee = StdFee(amount: <StdCoin>[], gas: 'gas');

    final event = CommercioDocsShareDocumentEvent(
      metadata: metadata,
      recipients: recipients,
      docId: docId,
      doSign: doSign,
      checksum: checksum,
      contentUri: contentUri,
      fee: fee,
    );

    expect(event.props, [
      metadata,
      recipients,
      docId,
      doSign,
      checksum,
      contentUri,
      fee,
    ]);
  });

  test('CommercioDocsShareEncryptedDocumentEvent', () {
    final metadata = CommercioDocMetadata(
      contentUri: 'contentUri',
      schemaType: 'schemaType',
    );
    const recipients = <String>[];
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
    const fee = StdFee(amount: <StdCoin>[], gas: 'gas');
    const encryptedData = <EncryptedData>[];
    const aesKey = null;

    final event = CommercioDocsShareEncryptedDocumentEvent(
        metadata: metadata,
        recipients: recipients,
        docId: docId,
        doSign: doSign,
        checksum: checksum,
        contentUri: contentUri,
        fee: fee,
        encryptedData: encryptedData,
        aesKey: aesKey);

    expect(event.props, [
      metadata,
      recipients,
      encryptedData,
      aesKey,
      docId,
      doSign,
      checksum,
      contentUri,
      fee,
    ]);
  });

  test('CommercioDocsSendReceiptEvent', () {
    const recipient = 'recipient';
    const docId = 'docId';
    const txHash = 'txHash';

    final event = CommercioDocsSendReceiptEvent(
      docId: docId,
      recipient: recipient,
      txHash: txHash,
    );

    expect(event.props, [recipient, txHash, docId]);
  });

  test('CommercioDocsSentDocumentsEvent', () {
    final event = const CommercioDocsSentDocumentsEvent();

    expect(event.props, []);
  });

  test('CommercioDocsReceivedDocumentsEvent', () {
    final event = const CommercioDocsReceivedDocumentsEvent();

    expect(event.props, []);
  });

  test('CommercioDocsSentReceiptsEvent', () {
    final event = const CommercioDocsSentReceiptsEvent();

    expect(event.props, []);
  });

  test('CommercioDocsReceivedReceiptsEvent', () {
    final event = const CommercioDocsReceivedReceiptsEvent();

    expect(event.props, []);
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
