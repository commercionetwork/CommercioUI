import 'package:flutter/foundation.dart';
import 'package:sacco/wallet.dart';

/// Represents a [Wallet] with its [address] already derived.
/// This class is intended to improve the performance of calling
/// `wallet.bech32Address`.
class WalletWithAddress {
  final Wallet wallet;
  final String address;

  const WalletWithAddress({@required this.wallet, @required this.address});
}
