import 'package:commercio_ui/src/entities/wallet_with_address.dart';
import 'package:test/test.dart';
import 'package:sacco/sacco.dart';

void main() {
  final correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'did:com:',
    lcdUrl: Uri.parse('http://lcd.uri'),
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
