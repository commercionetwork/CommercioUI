import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class CommercioMintOpenCdpBloc
    extends Bloc<CommercioMintOpenCdpEvent, CommercioMintOpenedCdpState> {
  final StatefulCommercioMint commercioMint;

  CommercioMintOpenCdpBloc({
    @required this.commercioMint,
  }) : super(const CommercioMintOpenedCdpStateInitial());

  @override
  Stream<CommercioMintOpenedCdpState> mapEventToState(
    CommercioMintOpenCdpEvent event,
  ) async* {
    try {
      yield const CommercioMintOpenedCdpStateLoading();

      final result = await commercioMint.openCdp(
        amount: event.amount,
        fee: event.fee,
        mode: event.mode,
      );

      yield CommercioMintOpenedCdpStateData(result: result);
    } catch (e) {
      yield CommercioMintOpenedCdpStateError(e.toString());
    }
  }
}

class CommercioMintDeriveCloseCdpBloc extends Bloc<
    CommercioMintDeriveCloseCdpEvent, CommercioMintDeriveCloseCdpState> {
  final StatefulCommercioMint commercioMint;

  CommercioMintDeriveCloseCdpBloc({
    @required this.commercioMint,
  }) : super(const CommercioMintDeriveCloseCdpStateInitial());

  @override
  Stream<CommercioMintDeriveCloseCdpState> mapEventToState(
    CommercioMintDeriveCloseCdpEvent event,
  ) async* {
    try {
      yield const CommercioMintDeriveCloseCdpStateLoading();

      final closeCdp = await commercioMint.deriveCloseCdp(
        blockHeight: event.blockHeight,
      );

      yield CommercioMintDeriveCloseCdpStateData(closeCdp: closeCdp);
    } catch (e) {
      yield CommercioMintDeriveCloseCdpStateError(e.toString());
    }
  }
}

class CommercioMintCloseCdpsBloc
    extends Bloc<CommercioMintCloseCdpsEvent, CommercioMintClosedCdpsState> {
  final StatefulCommercioMint commercioMint;

  CommercioMintCloseCdpsBloc({
    @required this.commercioMint,
  }) : super(const CommercioMintClosedCdpsStateInitial());

  @override
  Stream<CommercioMintClosedCdpsState> mapEventToState(
    CommercioMintCloseCdpsEvent event,
  ) async* {
    try {
      yield const CommercioMintClosedCdpsStateLoading();

      final result = await commercioMint.closeCdps(
        closeCdps: event.closeCdps,
        fee: event.fee,
        mode: event.mode,
      );

      yield CommercioMintClosedCdpsStateData(result: result);
    } catch (e) {
      yield CommercioMintClosedCdpsStateError(e.toString());
    }
  }
}
