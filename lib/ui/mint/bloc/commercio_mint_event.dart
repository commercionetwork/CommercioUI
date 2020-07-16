import 'package:commerciosdk/entities/mint/close_cdp.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

abstract class CommercioMintEvent extends Equatable {
  const CommercioMintEvent();
}

class CommercioMintOpenCdpEvent extends CommercioMintEvent {
  final int amount;
  final StdFee fee;

  const CommercioMintOpenCdpEvent({@required this.amount, this.fee});

  @override
  List<Object> get props => [amount, fee];
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

  const CommercioMintCloseCdpsEvent({
    @required this.closeCdps,
    this.fee,
  });

  @override
  List<Object> get props => [closeCdps, fee];
}
