import 'package:commerciosdk/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sacco/sacco.dart';
import 'package:flutter/foundation.dart';

part 'commercio_mint_state.freezed.dart';

@freezed
class CommercioMintDeriveCCCState with _$CommercioMintDeriveCCCState {
  const factory CommercioMintDeriveCCCState({
    required MintCcc mintCcc,
  }) = CommercioMintDeriveCCCStateData;

  const factory CommercioMintDeriveCCCState.initial() =
      CommercioMintDeriveCCCStateInitial;

  const factory CommercioMintDeriveCCCState.loading() =
      CommercioMintDeriveCCCStateLoading;

  const factory CommercioMintDeriveCCCState.error([String? error]) =
      CommercioMintDeriveCCCStateError;
}

@freezed
class CommercioMintMintedCCCState with _$CommercioMintMintedCCCState {
  const factory CommercioMintMintedCCCState({
    required TransactionResult result,
  }) = CommercioMintMintedCCCStateData;

  const factory CommercioMintMintedCCCState.initial() =
      CommercioMintMintedCCCStateInitial;

  const factory CommercioMintMintedCCCState.loading() =
      CommercioMintMintedCCCStateLoading;

  const factory CommercioMintMintedCCCState.error([String? error]) =
      CommercioMintMintedCCCStateError;
}

@freezed
class CommercioMintDeriveBurnCCCState with _$CommercioMintDeriveBurnCCCState {
  const factory CommercioMintDeriveBurnCCCState({
    required BurnCcc burnCcc,
  }) = CommercioMintDeriveBurnCCCStateData;

  const factory CommercioMintDeriveBurnCCCState.initial() =
      CommercioMintDeriveBurnCCCStateInitial;

  const factory CommercioMintDeriveBurnCCCState.loading() =
      CommercioMintDeriveBurnCCCStateLoading;

  const factory CommercioMintDeriveBurnCCCState.error([String? error]) =
      CommercioMintDeriveBurnCCCStateError;
}

@freezed
class CommercioMintBurnCCCState with _$CommercioMintBurnCCCState {
  const factory CommercioMintBurnCCCState({
    required TransactionResult result,
  }) = CommercioMintBurnCCCStateData;

  const factory CommercioMintBurnCCCState.initial() =
      CommercioMintBurnCCCStateInitial;

  const factory CommercioMintBurnCCCState.loading() =
      CommercioMintBurnCCCStateLoading;

  const factory CommercioMintBurnCCCState.error([String? error]) =
      CommercioMintBurnCCCStateError;
}

@freezed
class CommercioMintGetExchangeTradePositionsState
    with _$CommercioMintGetExchangeTradePositionsState {
  const factory CommercioMintGetExchangeTradePositionsState({
    required List<ExchangeTradePosition> exchangeTradePositions,
  }) = CommercioMintGetExchangeTradePositionsStateData;

  const factory CommercioMintGetExchangeTradePositionsState.initial() =
      CommercioMintGetExchangeTradePositionsStateInitial;

  const factory CommercioMintGetExchangeTradePositionsState.loading() =
      CommercioMintGetExchangeTradePositionsStateLoading;

  const factory CommercioMintGetExchangeTradePositionsState.error(
      [String? error]) = CommercioMintGetExchangeTradePositionsStateError;
}
