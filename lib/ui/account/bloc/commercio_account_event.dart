import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

abstract class CommercioAccountEvent extends Equatable {
  const CommercioAccountEvent();
}

class CommercioAccountGenerateNewWalletEvent extends CommercioAccountEvent {
  final String mnemonic;
  final String lastDerivationPathSegment;

  const CommercioAccountGenerateNewWalletEvent({
    this.mnemonic,
    this.lastDerivationPathSegment,
  });

  @override
  List<Object> get props => [mnemonic, lastDerivationPathSegment];
}

class CommercioAccountRestoreWalletEvent extends CommercioAccountEvent {
  const CommercioAccountRestoreWalletEvent();

  @override
  List<Object> get props => [];
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
  final List<StdCoin> feeAmount;
  final String gas;

  const CommercioAccountSendTokensEvent({
    @required this.recipientAddress,
    @required this.amount,
    this.feeAmount,
    this.gas,
  });

  @override
  List<Object> get props => [recipientAddress, amount, feeAmount, gas];
}

class CommercioAccountGenerateQrEvent extends CommercioAccountEvent {
  const CommercioAccountGenerateQrEvent();

  @override
  List<Object> get props => [];
}

class CommercioAccountGeneratePairwiseWalletEvent
    extends CommercioAccountEvent {
  final String newMnemonic;
  final String lastDerivationPath;

  const CommercioAccountGeneratePairwiseWalletEvent({
    this.newMnemonic,
    this.lastDerivationPath = '1',
  });

  @override
  List<Object> get props => [newMnemonic, lastDerivationPath];
}
