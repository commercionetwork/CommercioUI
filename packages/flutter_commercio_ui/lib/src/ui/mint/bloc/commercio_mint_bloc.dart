import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'commercio_mint_event.dart';
import 'commercio_mint_state.dart';

class CommercioDeriveMintCCCBloc
    extends Bloc<CommercioDeriveMintCCCEvent, CommercioMintDeriveCCCState> {
  final StatefulCommercioMint commercioMint;

  CommercioDeriveMintCCCBloc({
    required this.commercioMint,
  }) : super(const CommercioMintDeriveCCCStateInitial());

  @override
  Stream<CommercioMintDeriveCCCState> mapEventToState(
    CommercioDeriveMintCCCEvent event,
  ) async* {
    try {
      yield const CommercioMintDeriveCCCStateLoading();

      final mintCCC = commercioMint.deriveMintCcc(
        amount: event.amount,
        id: event.id,
        depositor: event.depositor,
      );

      yield CommercioMintDeriveCCCStateData(mintCcc: mintCCC);
    } catch (e) {
      yield CommercioMintDeriveCCCStateError(e.toString());
    }
  }
}

class CommercioMintCCCBloc
    extends Bloc<CommercioMintCCCEvent, CommercioMintMintedCCCState> {
  final StatefulCommercioMint commercioMint;

  CommercioMintCCCBloc({
    required this.commercioMint,
  }) : super(const CommercioMintMintedCCCStateInitial());

  @override
  Stream<CommercioMintMintedCCCState> mapEventToState(
    CommercioMintCCCEvent event,
  ) async* {
    try {
      yield const CommercioMintMintedCCCStateLoading();

      final result = await commercioMint.mintCccsList(
        mintCccs: event.derivedMintCCC,
        fee: event.fee,
        mode: event.mode,
      );

      yield CommercioMintMintedCCCStateData(result: result);
    } catch (e) {
      yield CommercioMintMintedCCCStateError(e.toString());
    }
  }
}

class CommercioMintDeriveBurnCccBloc extends Bloc<
    CommercioMintDeriveBurnCCCEvent, CommercioMintDeriveBurnCCCState> {
  final StatefulCommercioMint commercioMint;

  CommercioMintDeriveBurnCccBloc({
    required this.commercioMint,
  }) : super(const CommercioMintDeriveBurnCCCStateInitial());

  @override
  Stream<CommercioMintDeriveBurnCCCState> mapEventToState(
    CommercioMintDeriveBurnCCCEvent event,
  ) async* {
    try {
      yield const CommercioMintDeriveBurnCCCStateLoading();

      final burnCcc = commercioMint.deriveBurnCcc(
        amount: event.amount,
        id: event.id,
        walletAddress: event.walletAddress,
      );

      yield CommercioMintDeriveBurnCCCStateData(burnCcc: burnCcc);
    } catch (e) {
      yield CommercioMintDeriveBurnCCCStateError(e.toString());
    }
  }
}

class CommercioMintBurnCccBloc
    extends Bloc<CommercioMintBurnCCCEvent, CommercioMintBurnCCCState> {
  final StatefulCommercioMint commercioMint;

  CommercioMintBurnCccBloc({
    required this.commercioMint,
  }) : super(const CommercioMintBurnCCCStateInitial());

  @override
  Stream<CommercioMintBurnCCCState> mapEventToState(
    CommercioMintBurnCCCEvent event,
  ) async* {
    try {
      yield const CommercioMintBurnCCCStateLoading();

      final result = await commercioMint.burnCccsList(
        burnCccs: event.burnCccs,
        fee: event.fee,
        mode: event.mode,
      );

      yield CommercioMintBurnCCCStateData(result: result);
    } catch (e) {
      yield CommercioMintBurnCCCStateError(e.toString());
    }
  }
}

class CommercioMintGetExchangeTradePositionsBloc extends Bloc<
    CommercioMintGetExchangeTradePositionsEvent,
    CommercioMintGetExchangeTradePositionsState> {
  final StatefulCommercioMint commercioMint;

  CommercioMintGetExchangeTradePositionsBloc({
    required this.commercioMint,
  }) : super(const CommercioMintGetExchangeTradePositionsStateInitial());

  @override
  Stream<CommercioMintGetExchangeTradePositionsState> mapEventToState(
    CommercioMintGetExchangeTradePositionsEvent event,
  ) async* {
    try {
      yield const CommercioMintGetExchangeTradePositionsStateLoading();

      final exchangeTradePositions =
          await commercioMint.getExchangeTradePositions(
        walletAddress: event.walletAddress,
      );

      yield CommercioMintGetExchangeTradePositionsStateData(
        exchangeTradePositions: exchangeTradePositions,
      );
    } catch (e) {
      yield CommercioMintGetExchangeTradePositionsStateError(e.toString());
    }
  }
}
