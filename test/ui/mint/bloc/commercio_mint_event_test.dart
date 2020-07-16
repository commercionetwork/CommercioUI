import 'package:commercio_ui/ui/mint/bloc/commercio_mint_event.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';

const correctSignerDid = 'signerDid';
const correctTimestamp = 'timestamp';
const correctBlockHeigth = 1234;
final correctCloseCdp = CloseCdp(
  signerDid: correctSignerDid,
  timeStamp: correctTimestamp,
);

void main() {
  test('CommercioMintOpenCdpEvent', () {
    const amount = 1;
    const fee = StdFee(amount: [], gas: 'gas');

    final event = CommercioMintOpenCdpEvent(
      amount: amount,
      fee: fee,
    );

    expect(event.props, [amount, fee]);
  });

  test('CommercioMintDeriveCloseCdpEvent', () {
    final event = CommercioMintDeriveCloseCdpEvent(
      blockHeight: correctBlockHeigth,
    );

    expect(event.props, [correctBlockHeigth]);
  });

  test('CommercioMintCloseCdpsEvent', () {
    const fee = StdFee(amount: [], gas: 'gas');

    final event = CommercioMintCloseCdpsEvent(
      closeCdps: [correctCloseCdp],
      fee: fee,
    );

    expect(event.props, [
      [correctCloseCdp],
      fee
    ]);
  });
}
