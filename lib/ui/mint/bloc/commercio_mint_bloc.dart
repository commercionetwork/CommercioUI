import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/ui/bloc/commercio_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

part 'commercio_mint_event.dart';
part 'commercio_mint_state.dart';
part 'commercio_mint_state_error.dart';
part 'commercio_mint_state_loading.dart';

class CommercioMintBloc extends Bloc<CommercioMintEvent, CommercioMintState> {
  final StatefulCommercioMint commercioMint;

  CommercioMintBloc({
    @required StatefulCommercioAccount commercioAccount,
  }) : commercioMint =
            StatefulCommercioMint(commercioAccount: commercioAccount);

  @override
  CommercioMintState get initialState => const CommercioMintInitial();

  @override
  Stream<CommercioMintState> mapEventToState(
    CommercioMintEvent event,
  ) async* {
    if (event is CommercioMintOpenCdpEvent) {
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

    if (event is CommercioMintCloseCdpEvent) {
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
}
