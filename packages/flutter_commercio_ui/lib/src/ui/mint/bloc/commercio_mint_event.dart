import 'package:commerciosdk/export.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:sacco/sacco.dart';

abstract class CommercioMintEvent extends Equatable {
  const CommercioMintEvent();
}

class CommercioMintOpenCdpEvent extends CommercioMintEvent {
  final int amount;
  final StdFee fee;
  final BroadcastingMode mode;

  const CommercioMintOpenCdpEvent({
    @required this.amount,
    this.fee,
    this.mode,
  });

  @override
  List<Object> get props => [amount, fee, mode];
}

class CommercioMintDeriveCloseCdpEvent extends CommercioMintEvent {
  final int blockHeight;

  const CommercioMintDeriveCloseCdpEvent({
    @required this.blockHeight,
  });

  @override
  List<Object> get props => [blockHeight];
}

class CommercioMintCloseCdpsEvent extends CommercioMintEvent {
  final List<CloseCdp> closeCdps;
  final StdFee fee;
  final BroadcastingMode mode;

  const CommercioMintCloseCdpsEvent({
    @required this.closeCdps,
    this.fee,
    this.mode,
  });

  @override
  List<Object> get props => [closeCdps, fee, mode];
}
