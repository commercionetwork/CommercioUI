import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';

import 'commercio_id_event.dart';
import 'commercio_id_state.dart';

class CommercioIdGenerateKeysBloc
    extends Bloc<CommercioIdGenerateKeysEvent, CommercioIdGeneratedKeysState> {
  final StatefulCommercioId commercioId;

  CommercioIdGenerateKeysBloc({required this.commercioId})
      : super(const CommercioIdGeneratedKeysStateInitial());

  @override
  Stream<CommercioIdGeneratedKeysState> mapEventToState(
    CommercioIdGenerateKeysEvent event,
  ) async* {
    try {
      yield const CommercioIdGeneratedKeysStateLoading();

      final keys = await commercioId.generateKeys();

      yield CommercioIdGeneratedKeysStateData(commercioIdKeys: keys);
    } catch (e) {
      yield CommercioIdGeneratedKeysStateError(e.toString());
    }
  }
}

class CommercioIdRestoreKeysBloc
    extends Bloc<CommercioIdRestoreKeysEvent, CommercioIdRestoredKeysState> {
  final StatefulCommercioId commercioId;

  CommercioIdRestoreKeysBloc({required this.commercioId})
      : super(const CommercioIdRestoredKeysStateInitial());

  @override
  Stream<CommercioIdRestoredKeysState> mapEventToState(
    CommercioIdRestoreKeysEvent event,
  ) async* {
    try {
      yield const CommercioIdRestoredKeysStateLoading();

      final keys = await commercioId.restoreKeys();

      yield CommercioIdRestoredKeysStateData(commercioIdKeys: keys);
    } catch (e) {
      yield CommercioIdRestoredKeysStateError(e.toString());
    }
  }
}

class CommercioIdDeleteKeysBloc
    extends Bloc<CommercioIdDeleteKeysEvent, CommercioIdDeletedKeysState> {
  final StatefulCommercioId commercioId;

  CommercioIdDeleteKeysBloc({required this.commercioId})
      : super(const CommercioIdDeletedKeysStateInitial());

  @override
  Stream<CommercioIdDeletedKeysState> mapEventToState(
    CommercioIdDeleteKeysEvent event,
  ) async* {
    try {
      yield const CommercioIdDeletedKeysStateLoading();

      await commercioId.deleteKeys();

      yield const CommercioIdDeletedKeysStateData();
    } catch (e) {
      yield CommercioIdDeletedKeysStateError(e.toString());
    }
  }
}

class CommercioIdDeriveDidDocumentBloc extends Bloc<
    CommercioIdDeriveDidDocumentEvent, CommercioIdDerivedDidDocumentState> {
  final StatefulCommercioId commercioId;

  CommercioIdDeriveDidDocumentBloc({required this.commercioId})
      : super(const CommercioIdDerivedDidDocumentStateInitial());

  @override
  Stream<CommercioIdDerivedDidDocumentState> mapEventToState(
    CommercioIdDeriveDidDocumentEvent event,
  ) async* {
    try {
      yield const CommercioIdDerivedDidDocumentStateLoading();

      final didDocument = await commercioId.deriveDidDocument();

      yield CommercioIdDerivedDidDocumentStateData(didDocument: didDocument);
    } catch (e) {
      yield CommercioIdDerivedDidDocumentStateError(e.toString());
    }
  }
}

class CommercioIdSetDidDocumentsBloc extends Bloc<
    CommercioIdSetDidDocumentsEvent, CommercioIdSetDidDocumentsState> {
  final StatefulCommercioId commercioId;

  CommercioIdSetDidDocumentsBloc({required this.commercioId})
      : super(const CommercioIdSetDidDocumentsStateInitial());

  @override
  Stream<CommercioIdSetDidDocumentsState> mapEventToState(
    CommercioIdSetDidDocumentsEvent event,
  ) async* {
    try {
      yield const CommercioIdSetDidDocumentsStateLoading();

      final result = await commercioId.setDidDocuments(
        didDocuments: event.didDocuments,
      );

      yield CommercioIdSetDidDocumentsStateData(result: result);
    } catch (e) {
      yield CommercioIdSetDidDocumentsStateError(e.toString());
    }
  }
}

class CommercioIdRechargeTumblerBloc extends Bloc<
    CommercioIdRechargeTumblerEvent, CommercioIdRechargedTumblerState> {
  final StatefulCommercioId commercioId;

  CommercioIdRechargeTumblerBloc({required this.commercioId})
      : super(const CommercioIdRechargedTumblerStateInitial());

  @override
  Stream<CommercioIdRechargedTumblerState> mapEventToState(
    CommercioIdRechargeTumblerEvent event,
  ) async* {
    try {
      yield const CommercioIdRechargedTumblerStateLoading();

      TransactionResult result;

      result = await commercioId.rechargeTumbler(
        amount: event.amount,
        fee: event.fee,
        mode: event.mode,
      );

      yield CommercioIdRechargedTumblerStateData(result: result);
    } catch (e) {
      yield CommercioIdRechargedTumblerStateError(e.toString());
    }
  }
}

class CommercioIdDeriveDidPowerUpRequestBloc extends Bloc<
    CommercioIdDeriveDidPowerUpRequestEvent,
    CommercioIdDeriveDidPowerUpRequestState> {
  final StatefulCommercioId commercioId;

  CommercioIdDeriveDidPowerUpRequestBloc({required this.commercioId})
      : super(const CommercioIdDeriveDidPowerUpRequestStateInitial());

  @override
  Stream<CommercioIdDeriveDidPowerUpRequestState> mapEventToState(
    CommercioIdDeriveDidPowerUpRequestEvent event,
  ) async* {
    try {
      yield const CommercioIdDeriveDidPowerUpRequestStateLoading();

      final powerUpRequest = await commercioId.deriveDidPowerUpRequest(
        pairwiseAddress: event.pairwiseAddress,
        amount: event.amount,
      );

      yield CommercioIdDeriveDidPowerUpRequestStateData(
        didPowerUpRequest: powerUpRequest,
      );
    } catch (e) {
      yield CommercioIdDeriveDidPowerUpRequestStateError(e.toString());
    }
  }
}

class CommercioIdRequestDidPowerUpsBloc extends Bloc<
    CommercioIdRequestDidPowerUpsEvent, CommercioIdRequestedDidPowerUpsState> {
  final StatefulCommercioId commercioId;

  CommercioIdRequestDidPowerUpsBloc({required this.commercioId})
      : super(const CommercioIdRequestedDidPowerUpsStateInitial());

  @override
  Stream<CommercioIdRequestedDidPowerUpsState> mapEventToState(
    CommercioIdRequestDidPowerUpsEvent event,
  ) async* {
    try {
      yield const CommercioIdRequestedDidPowerUpsStateLoading();

      final result = await commercioId.requestDidPowerUps(
        powerUpRequests: event.powerUpRequests,
        fee: event.fee,
      );

      yield CommercioIdRequestedDidPowerUpsStateData(result: result);
    } catch (e) {
      yield CommercioIdRequestedDidPowerUpsStateError(e.toString());
    }
  }
}
