import 'package:commercio_ui/ui/mint/bloc/commercio_mint_event.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';

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

  test('CommercioMintCloseCdpEvent', () {
    const blockHeight = 1;
    const fee = StdFee(amount: [], gas: 'gas');

    final event = CommercioMintCloseCdpEvent(
      blockHeight: blockHeight,
      fee: fee,
    );

    expect(event.props, [blockHeight, fee]);
  });
}
