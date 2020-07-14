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
    const amounts = [<StdCoin>[]];
    const pairwiseAddresses = ['pairwiseAddress'];
    final rsaSignaturePrivateKeys = [RSAPrivateKey(null)];
    final wallets = [correctWallet];
    const fee = StdFee(amount: [StdCoin(denom: '', amount: '')], gas: '');

    final event = CommercioIdRequestDidPowerUpsEvent(
      amounts: amounts,
      pairwiseAddresses: pairwiseAddresses,
      wallets: wallets,
      rsaSignaturePrivateKeys: rsaSignaturePrivateKeys,
      fee: fee,
    );

    expect(event.props, [
      pairwiseAddresses,
      amounts,
      wallets,
      rsaSignaturePrivateKeys,
      fee,
    ]);
  });
}
