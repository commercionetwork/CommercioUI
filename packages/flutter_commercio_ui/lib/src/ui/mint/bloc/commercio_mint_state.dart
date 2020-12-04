import 'package:commerciosdk/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sacco/sacco.dart';

part 'commercio_mint_state.freezed.dart';

@freezed
abstract class CommercioMintOpenedCdpState with _$CommercioMintOpenedCdpState {
  const factory CommercioMintOpenedCdpState({
    @required TransactionResult result,
  }) = CommercioMintOpenedCdpStateData;

  const factory CommercioMintOpenedCdpState.initial() =
      CommercioMintOpenedCdpStateInitial;

  const factory CommercioMintOpenedCdpState.loading() =
      CommercioMintOpenedCdpStateLoading;

  const factory CommercioMintOpenedCdpState.error([String error]) =
      CommercioMintOpenedCdpStateError;
}

@freezed
abstract class CommercioMintDeriveCloseCdpState
    with _$CommercioMintDeriveCloseCdpState {
  const factory CommercioMintDeriveCloseCdpState({
    @required CloseCdp closeCdp,
  }) = CommercioMintDeriveCloseCdpStateData;

  const factory CommercioMintDeriveCloseCdpState.initial() =
      CommercioMintDeriveCloseCdpStateInitial;

  const factory CommercioMintDeriveCloseCdpState.loading() =
      CommercioMintDeriveCloseCdpStateLoading;

  const factory CommercioMintDeriveCloseCdpState.error([String error]) =
      CommercioMintDeriveCloseCdpStateError;
}

@freezed
abstract class CommercioMintClosedCdpsState
    with _$CommercioMintClosedCdpsState {
  const factory CommercioMintClosedCdpsState({
    @required TransactionResult result,
  }) = CommercioMintClosedCdpsStateData;

  const factory CommercioMintClosedCdpsState.initial() =
      CommercioMintClosedCdpsStateInitial;

  const factory CommercioMintClosedCdpsState.loading() =
      CommercioMintClosedCdpsStateLoading;

  const factory CommercioMintClosedCdpsState.error([String error]) =
      CommercioMintClosedCdpsStateError;
}
