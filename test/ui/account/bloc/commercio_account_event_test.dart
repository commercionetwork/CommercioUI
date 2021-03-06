import 'package:commercio_ui/src/ui/account/bloc/commercio_account_event.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('CommercioAccountGenerateWalletEvent', () {
    const lastDerivationPathSegment = '0';
    const mnemonic = 'mnemonic';

    final event = CommercioAccountGenerateWalletEvent(
      lastDerivationPathSegment: lastDerivationPathSegment,
      mnemonic: mnemonic,
    );

    expect(event.props, [mnemonic, lastDerivationPathSegment]);
  });

  test('CommercioAccountRestoreWalletEvent', () {
    const mnemonic = 'mnemonic';

    final event = CommercioAccountRestoreWalletEvent(mnemonic: mnemonic);

    expect(event.props, [mnemonic]);
  });

  test('CommercioAccountRequestFreeTokensEvent', () {
    const amount = 'amount';
    const faucetDomain = 'faucetDomain';

    final event = CommercioAccountRequestFreeTokensEvent(
      amount: amount,
      faucetDomain: faucetDomain,
    );

    expect(event.props, [faucetDomain, amount]);
  });

  test('CommercioAccountCheckBalanceEvent', () {
    final event = const CommercioAccountCheckBalanceEvent();

    expect(event.props, []);
  });

  test('CommercioAccountSendTokensEvent', () {
    const recipientAddress = 'recipientAddress';
    const amount = <StdCoin>[];
    const fee = StdFee(amount: [], gas: '');
    const mode = BroadcastingMode.ASYNC;

    final event = CommercioAccountSendTokensEvent(
      recipientAddress: recipientAddress,
      amount: amount,
      fee: fee,
      mode: mode,
    );

    expect(event.props, [recipientAddress, amount, fee, mode]);
  });

  test('CommercioAccountGenerateQrEvent', () {
    final event = const CommercioAccountGenerateQrEvent();

    expect(event.props, []);
  });

  test('CommercioAccountGeneratePairwiseWalletEvent', () {
    const lastDerivationPath = 'lastDerivationPath';

    final event = const CommercioAccountGeneratePairwiseWalletEvent(
      lastDerivationPath: lastDerivationPath,
    );

    expect(event.props, [lastDerivationPath]);
  });
}
