import 'package:equatable/equatable.dart';
import 'package:sacco/wallet.dart';

/// Represents a [Wallet] with its [mnemonic] words already derived.
class WalletWithMnemonic extends Equatable {
  final Wallet wallet;
  final String mnemonic;

  const WalletWithMnemonic({required this.wallet, required this.mnemonic});

  @override
  List<Object> get props => [wallet, mnemonic];
}
