import 'package:commerciosdk/export.dart';
import 'package:equatable/equatable.dart';
import 'package:sacco/sacco.dart';

abstract class CommercioMintEvent extends Equatable {
  const CommercioMintEvent();
}

class CommercioDeriveMintCCCEvent extends CommercioMintEvent {
  final List<StdCoin> amount;
  final String id;
  final String? depositor;

  const CommercioDeriveMintCCCEvent({
    required this.amount,
    required this.id,
    this.depositor,
  });

  @override
  List<Object?> get props => [amount, id, depositor];
}

class CommercioMintCCCEvent extends CommercioMintEvent {
  final List<MintCcc> derivedMintCCC;
  final StdFee? fee;
  final BroadcastingMode? mode;

  const CommercioMintCCCEvent({
    required this.derivedMintCCC,
    this.fee,
    this.mode,
  });

  @override
  List<Object?> get props => [derivedMintCCC, fee, mode];
}

class CommercioMintDeriveBurnCCCEvent extends CommercioMintEvent {
  final StdCoin amount;
  final String id;
  final String? walletAddress;

  const CommercioMintDeriveBurnCCCEvent({
    required this.amount,
    required this.id,
    this.walletAddress,
  });

  @override
  List<Object?> get props => [amount, id, walletAddress];
}

class CommercioMintBurnCCCEvent extends CommercioMintEvent {
  final List<BurnCcc> burnCccs;
  final StdFee? fee;
  final BroadcastingMode? mode;

  const CommercioMintBurnCCCEvent({
    required this.burnCccs,
    this.fee,
    this.mode,
  });

  @override
  List<Object?> get props => [burnCccs, fee, mode];
}

class CommercioMintGetExchangeTradePositionsEvent extends CommercioMintEvent {
  final String? walletAddress;

  const CommercioMintGetExchangeTradePositionsEvent({this.walletAddress});

  @override
  List<Object?> get props => [walletAddress];
}
