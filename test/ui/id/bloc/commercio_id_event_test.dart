import 'package:commercio_ui/ui/id/bloc/commercio_id_event.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('CommercioIdGenerateKeysEvent', () {
    final event = CommercioIdGenerateKeysEvent();

    expect(event.props, []);
  });

  test('CommercioIdRestoreKeysEvent', () {
    final event = CommercioIdRestoreKeysEvent();

    expect(event.props, []);
  });

  test('CommercioIdDeleteKeysEvent', () {
    final event = CommercioIdDeleteKeysEvent();

    expect(event.props, []);
  });

  test('CommercioIdDeriveDidDocumentEvent', () {
    final event = CommercioIdDeriveDidDocumentEvent();

    expect(event.props, []);
  });

  test('CommercioIdSetDidDocumentEvent', () {
    const fee = StdFee(
      amount: [StdCoin(amount: 'amount', denom: 'denom')],
      gas: 'gas',
    );
    final didDocument = DidDocument(
      context: 'context',
      id: 'id',
      publicKeys: [],
      proof: DidDocumentProof(
        type: 'type',
        timestamp: 'timestamp',
        proofPurpose: 'proofPurpose',
        controller: 'controller',
        verificationMethod: 'verificationMethod',
        signatureValue: 'signatureValue',
      ),
    );
    final event = CommercioIdSetDidDocumentsEvent(
      didDocuments: [didDocument],
      fee: fee,
    );

    expect(event.props, [
      [didDocument],
      fee
    ]);
  });

  test('CommercioIdRechargeTumblerEvent', () {
    const rechargeAmount = <StdCoin>[];
    const rechargeFee = <StdCoin>[];
    const rechargeGas = 'rechargeGas';

    final event = CommercioIdRechargeTumblerEvent(
      rechargeAmount: rechargeAmount,
      rechargeFee: rechargeFee,
      rechargeGas: rechargeGas,
    );

    expect(event.props, [rechargeAmount, rechargeFee, rechargeGas]);
  });

  test('CommercioIdRequestDidPowerUpEvent', () {
    const amount = <StdCoin>[];
    const pairwiseAddress = 'pairwiseAddress';
    const rsaSignaturePrivateKey = null;

    final event = CommercioIdRequestDidPowerUpEvent(
      amount: amount,
      pairwiseAddress: pairwiseAddress,
      rsaSignaturePrivateKey: rsaSignaturePrivateKey,
    );

    expect(event.props, [pairwiseAddress, amount, rsaSignaturePrivateKey]);
  });
}
