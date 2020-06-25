import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'commercio_id_state.freezed.dart';

abstract class CommercioIdState extends CommercioState {
  const CommercioIdState();
}

@freezed
@Implements(CommercioIdState)
abstract class CommercioIdGeneratedKeysState
    with _$CommercioIdGeneratedKeysState {
  const factory CommercioIdGeneratedKeysState({
    @required CommercioIdKeys commercioIdKeys,
  }) = CommercioIdGeneratedKeysStateData;

  const factory CommercioIdGeneratedKeysState.initial() =
      CommercioIdGeneratedKeysStateInitial;

  const factory CommercioIdGeneratedKeysState.loading() =
      CommercioIdGeneratedKeysStateLoading;

  const factory CommercioIdGeneratedKeysState.error([String error]) =
      CommercioIdGeneratedKeysStateError;
}

@freezed
@Implements(CommercioIdState)
abstract class CommercioIdRestoredKeysState
    with _$CommercioIdRestoredKeysState {
  const factory CommercioIdRestoredKeysState({
    @required CommercioIdKeys commercioIdKeys,
  }) = CommercioIdRestoredKeysStateData;

  const factory CommercioIdRestoredKeysState.initial() =
      CommercioIdRestoredKeysStateInitial;

  const factory CommercioIdRestoredKeysState.loading() =
      CommercioIdRestoredKeysStateLoading;

  const factory CommercioIdRestoredKeysState.error([String error]) =
      CommercioIdRestoredKeysStateError;
}

@freezed
@Implements(CommercioIdState)
abstract class CommercioIdDeletedKeysState with _$CommercioIdDeletedKeysState {
  const factory CommercioIdDeletedKeysState() = CommercioIdDeletedKeysStateData;

  const factory CommercioIdDeletedKeysState.initial() =
      CommercioIdDeletedKeysStateInitial;

  const factory CommercioIdDeletedKeysState.loading() =
      CommercioIdDeletedKeysStateLoading;

  const factory CommercioIdDeletedKeysState.error([String error]) =
      CommercioIdDeletedKeysStateError;
}

@freezed
@Implements(CommercioIdState)
abstract class CommercioIdDerivedDidDocumentState
    with _$CommercioIdDerivedDidDocumentState {
  const factory CommercioIdDerivedDidDocumentState({
    @required DidDocument didDocument,
  }) = CommercioIdDerivedDidDocumentStateData;

  const factory CommercioIdDerivedDidDocumentState.initial() =
      CommercioIdDerivedDidDocumentStateInitial;

  const factory CommercioIdDerivedDidDocumentState.loading() =
      CommercioIdDerivedDidDocumentStateLoading;

  const factory CommercioIdDerivedDidDocumentState.error([String error]) =
      CommercioIdDerivedDidDocumentStateError;
}

@freezed
@Implements(CommercioIdState)
abstract class CommercioIdSetDidDocumentState
    with _$CommercioIdSetDidDocumentState {
  const factory CommercioIdSetDidDocumentState({
    @required TransactionResult result,
  }) = CommercioIdSetDidDocumentStateData;

  const factory CommercioIdSetDidDocumentState.initial() =
      CommercioIdSetDidDocumentStateInitial;

  const factory CommercioIdSetDidDocumentState.loading() =
      CommercioIdSetDidDocumentStateLoading;

  const factory CommercioIdSetDidDocumentState.error([String error]) =
      CommercioIdSetDidDocumentStateError;
}

@freezed
@Implements(CommercioIdState)
abstract class CommercioIdRechargedTumblerState
    with _$CommercioIdRechargedTumblerState {
  const factory CommercioIdRechargedTumblerState({
    @required TransactionResult result,
  }) = CommercioIdRechargedTumblerStateData;

  const factory CommercioIdRechargedTumblerState.initial() =
      CommercioIdRechargedTumblerStateInitial;

  const factory CommercioIdRechargedTumblerState.loading() =
      CommercioIdRechargedTumblerStateLoading;

  const factory CommercioIdRechargedTumblerState.error([String error]) =
      CommercioIdRechargedTumblerStateError;
}

@freezed
@Implements(CommercioIdState)
abstract class CommercioIdRequestedDidPowerUpState
    with _$CommercioIdRequestedDidPowerUpState {
  const factory CommercioIdRequestedDidPowerUpState({
    @required TransactionResult result,
  }) = CommercioIdRequestedDidPowerUpStateData;

  const factory CommercioIdRequestedDidPowerUpState.initial() =
      CommercioIdRequestedDidPowerUpStateInitial;

  const factory CommercioIdRequestedDidPowerUpState.loading() =
      CommercioIdRequestedDidPowerUpStateLoading;

  const factory CommercioIdRequestedDidPowerUpState.error([String error]) =
      CommercioIdRequestedDidPowerUpStateError;
}
