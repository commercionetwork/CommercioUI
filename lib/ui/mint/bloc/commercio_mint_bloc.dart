import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class CommercioMintOpenCdpBloc
    extends Bloc<CommercioMintOpenCdpEvent, CommercioMintOpenedCdpState> {
  final StatefulCommercioMint commercioMint;

  CommercioMintOpenCdpBloc({
    @required this.commercioMint,
  });

  @override
  CommercioMintOpenedCdpState get initialState =>
      const CommercioMintOpenedCdpStateInitial();

  @override
  Stream<CommercioMintOpenedCdpState> mapEventToState(
    CommercioMintOpenCdpEvent event,
  ) async* {
    yield const CommercioMintOpenedCdpStateLoading();

    final result = await commercioMint.openCdp(
      amount: event.amount,
      fee: event.fee,
    );

    yield CommercioMintOpenedCdpStateData(result: result);
  }
}

class CommercioMintCloseCdpBloc
    extends Bloc<CommercioMintCloseCdpEvent, CommercioMintClosedCdpState> {
  final StatefulCommercioMint commercioMint;

  CommercioMintCloseCdpBloc({
    @required this.commercioMint,
  });

  @override
  CommercioMintClosedCdpState get initialState =>
      const CommercioMintClosedCdpStateInitial();

  @override
  Stream<CommercioMintClosedCdpState> mapEventToState(
    CommercioMintCloseCdpEvent event,
  ) async* {
    yield const CommercioMintClosedCdpStateLoading();

    final result = await commercioMint.closeCdp(
      blockHeight: event.blockHeight,
      fee: event.fee,
    );

    yield CommercioMintClosedCdpStateData(result: result);
  }
}
