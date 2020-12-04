import 'package:commerciosdk/export.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:sacco/sacco.dart';

abstract class CommercioAccountEvent extends Equatable {
  const CommercioAccountEvent();
}

class CommercioAccountGenerateWalletEvent extends Equatable
    implements CommercioAccountEvent {
  final String mnemonic;
  final String lastDerivationPathSegment;

  const CommercioAccountGenerateWalletEvent({
    this.mnemonic,
    this.lastDerivationPathSegment,
  });

  @override
  List<Object> get props => [mnemonic, lastDerivationPathSegment];
}

class CommercioAccountRestoreWalletEvent extends CommercioAccountEvent {
  final String mnemonic;

  const CommercioAccountRestoreWalletEvent({this.mnemonic});

  @override
  List<Object> get props => [mnemonic];
}

class CommercioAccountRequestFreeTokensEvent extends CommercioAccountEvent {
  final String faucetDomain;
  final String amount;

  const CommercioAccountRequestFreeTokensEvent({
    this.faucetDomain,
    this.amount,
  });

  @override
  List<Object> get props => [faucetDomain, amount];
}

class CommercioAccountCheckBalanceEvent extends CommercioAccountEvent {
  const CommercioAccountCheckBalanceEvent();

  @override
  List<Object> get props => [];
}

class CommercioAccountSendTokensEvent extends CommercioAccountEvent {
  final String recipientAddress;
  final List<StdCoin> amount;
  final StdFee fee;
  final BroadcastingMode mode;

  const CommercioAccountSendTokensEvent({
    @required this.recipientAddress,
    @required this.amount,
    this.fee,
    this.mode,
  });

  @override
  List<Object> get props => [recipientAddress, amount, fee, mode];
}

class CommercioAccountGenerateQrEvent extends CommercioAccountEvent {
  const CommercioAccountGenerateQrEvent();

  @override
  List<Object> get props => [];
}

class CommercioAccountGeneratePairwiseWalletEvent
    extends CommercioAccountEvent {
  final String lastDerivationPath;

  const CommercioAccountGeneratePairwiseWalletEvent({
    @required this.lastDerivationPath,
  });

  @override
  List<Object> get props => [lastDerivationPath];
}
