import 'package:equatable/equatable.dart';
import 'package:sacco/wallet.dart';

/// Represents a [Wallet] with its [address] already derived.
/// This class is intended to improve the performance of calling
/// `wallet.bech32Address`.
class WalletWithAddress extends Equatable {
  final Wallet wallet;
  final String address;

  const WalletWithAddress({required this.wallet, required this.address});

  @override
  List<Object> get props => [wallet, address];
}
