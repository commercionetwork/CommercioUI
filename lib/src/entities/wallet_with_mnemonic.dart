import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:sacco/wallet.dart';

/// Represents a [Wallet] with its [mnemonic] words already derived.
class WalletWithMnemonic extends Equatable {
  final Wallet wallet;
  final String mnemonic;

  const WalletWithMnemonic({@required this.wallet, @required this.mnemonic})
      : assert(wallet != null),
        assert(mnemonic != null);

  @override
  List<Object> get props => [wallet, mnemonic];
}
