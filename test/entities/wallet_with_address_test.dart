import 'package:commercio_ui/src/entities/wallet_with_address.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sacco/sacco.dart';

void main() {
  final correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'lcdUrl',
  );
  const correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  final correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );

  test('Constructor', () {
    final walletWithAddress = WalletWithAddress(
      address: correctWallet.bech32Address,
      wallet: correctWallet,
    );

    expect(walletWithAddress.address, correctWallet.bech32Address);
    expect(walletWithAddress.wallet, correctWallet);
  });
}
