import 'package:commercio_ui/commercio_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

part 'commercio_mint_state.freezed.dart';

abstract class CommercioMintState extends CommercioState {
  const CommercioMintState();
}

@freezed
@Implements(CommercioMintState)
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
@Implements(CommercioMintState)
abstract class CommercioMintClosedCdpState with _$CommercioMintClosedCdpState {
  const factory CommercioMintClosedCdpState({
    @required TransactionResult result,
  }) = CommercioMintClosedCdpStateData;

  const factory CommercioMintClosedCdpState.initial() =
      CommercioMintClosedCdpStateInitial;

  const factory CommercioMintClosedCdpState.loading() =
      CommercioMintClosedCdpStateLoading;

  const factory CommercioMintClosedCdpState.error([String error]) =
      CommercioMintClosedCdpStateError;
}
