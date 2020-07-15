import 'dart:io';

import 'package:commercio_ui/ui/id/bloc/commercio_id_event.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  final NetworkInfo correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'lcdUrl',
  );
  const String correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  Wallet correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  final correctWalletAddress = correctWallet.bech32Address;
  const correctAmount = [StdCoin(amount: '100', denom: 'denom')];
  const correctProof = 'proof';
  const correctUuid = '4ec5eadc-e4da-43aa-b60f-000b5c24c262';
  const correctEncryptionKey = 'encryptionKey';
  final correctDidPowerUpRequest = RequestDidPowerUp(
    claimantDid: correctWalletAddress,
    amount: correctAmount,
    powerUpProof: correctProof,
    uuid: correctUuid,
    encryptionKey: correctEncryptionKey,
  );

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

  test('CommercioIdDeriveDidPowerUpRequestEvent', () {
    final event = CommercioIdDeriveDidPowerUpRequestEvent(
      pairwiseAddress: correctWalletAddress,
      amount: correctAmount,
    );

    expect(event.props, [correctWalletAddress, correctAmount]);
  });

  test('CommercioIdRequestDidPowerUpEvent', () {
    const fee = StdFee(amount: [StdCoin(denom: '', amount: '')], gas: '');

    final event = CommercioIdRequestDidPowerUpsEvent(
      powerUpRequests: [correctDidPowerUpRequest],
      fee: fee,
    );

    expect(event.props, [
      [correctDidPowerUpRequest],
      fee
    ]);
  });
}
