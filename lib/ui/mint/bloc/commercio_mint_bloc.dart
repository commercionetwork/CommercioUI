import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class CommercioMintBloc extends Bloc<CommercioMintEvent, CommercioMintState> {
  final StatefulCommercioMint commercioMint;

  CommercioMintBloc({
    @required this.commercioMint,
  });

  @override
  CommercioMintState get initialState => const CommercioMintInitial();

  @override
  Stream<CommercioMintState> mapEventToState(
    CommercioMintEvent event,
  ) async* {
    if (event is CommercioMintOpenCdpEvent) {
      yield* _mapCommercioMintOpenCdpEventToState(event);
    }

    if (event is CommercioMintCloseCdpEvent) {
      yield* _mapCommercioMintCloseCdpEventToState(event);
    }
  }

  Stream<CommercioMintState> _mapCommercioMintOpenCdpEventToState(
    CommercioMintOpenCdpEvent event,
  ) async* {
    try {
      yield const CommercioMintOpenCdpLoading();

      final txResult =
          await commercioMint.openCdp(amount: event.amount, fee: event.fee);

      yield CommercioMintOpenedCdp(
          commercioMint: commercioMint, transactionResult: txResult);
    } catch (e) {
      yield CommercioMintOpenCdpError(e.toString());
    }
  }

  Stream<CommercioMintState> _mapCommercioMintCloseCdpEventToState(
    CommercioMintCloseCdpEvent event,
  ) async* {
    try {
      yield const CommercioMintCloseCdpLoading();

      final txResult = await commercioMint.closeCdp(
          blockHeight: event.blockHeight, fee: event.fee);

      yield CommercioMintClosedCdp(
          commercioMint: commercioMint, transactionResult: txResult);
    } catch (e) {
      yield CommercioMintCloseCdpError(e.toString());
    }
  }
}
