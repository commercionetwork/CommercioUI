import 'package:meta/meta.dart';
import 'package:sacco/wallet.dart';

class WalletWithAddress {
  final Wallet wallet;
  final String address;

  const WalletWithAddress({@required this.wallet, @required this.address});
}
