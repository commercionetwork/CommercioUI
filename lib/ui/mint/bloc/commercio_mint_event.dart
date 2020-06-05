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

class CommercioMintCloseCdpEvent extends CommercioMintEvent {
  final int blockHeight;
  final StdFee fee;

  const CommercioMintCloseCdpEvent({@required this.blockHeight, this.fee});

  @override
  List<Object> get props => [blockHeight, fee];
}
