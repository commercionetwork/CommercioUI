import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

class CommercioIdBloc extends Bloc<CommercioIdEvent, CommercioIdState> {
  final StatefulCommercioId commercioId;

  CommercioIdBloc({@required this.commercioId});

  @override
  CommercioIdState get initialState => const CommercioIdInitial();

  @override
  Stream<CommercioIdState> mapEventToState(
    CommercioIdEvent event,
  ) async* {
    if (event is CommercioIdGenerateKeysEvent) {
      yield* _mapCommercioIdGenerateKeysEventToState(event);
    }

    if (event is CommercioIdRestoreKeysEvent) {
      yield* _mapCommercioIdRestoreKeysEventToState(event);
    }

    if (event is CommercioIdDeleteKeysEvent) {
      yield* _mapCommercioIdDeleteKeysEventToState(event);
    }

    if (event is CommercioIdDeriveDidDocumentEvent) {
      yield* _mapCommercioIdDeriveDidDocumentEventToState(event);
    }

    if (event is CommercioIdSetDidDocumentEvent) {
      yield* _mapCommercioIdSetDidDocumentEventToState(event);
    }

    if (event is CommercioIdRechargeGovernmentEvent) {
      yield* _mapCommercioIdRechargeGovernmentEventToState(event);
    }

    if (event is CommercioIdRequestDidPowerUpEvent) {
      yield* _mapCommercioIdRequestDidPowerUpEventToState(event);
    }
  }

  Stream<CommercioIdState> _mapCommercioIdGenerateKeysEventToState(
    CommercioIdGenerateKeysEvent event,
  ) async* {
    try {
      yield const CommercioIdGeneratingKeysLoading();

      await commercioId.generateKeys();

      yield CommercioIdWithGeneratedKeys(commercioId: commercioId);
    } catch (e) {
      yield CommercioIdGeneratingKeysError(e.toString());
    }
  }

  Stream<CommercioIdState> _mapCommercioIdRestoreKeysEventToState(
    CommercioIdRestoreKeysEvent event,
  ) async* {
    try {
      yield const CommercioIdRestoringKeysLoading();

      await commercioId.restoreKeys();

      yield CommercioIdWithRestoredKeys(commercioId: commercioId);
    } catch (e) {
      yield CommercioIdRestoringKeysError(e.toString());
    }
  }

  Stream<CommercioIdState> _mapCommercioIdDeleteKeysEventToState(
    CommercioIdDeleteKeysEvent event,
  ) async* {
    try {
      yield const CommercioIdDeletingKeysLoading();

      await commercioId.deleteKeys();

      yield CommercioIdWithDeletedKeys(commercioId: commercioId);
    } catch (e) {
      yield CommercioIdDeletingKeysError(e.toString());
    }
  }

  Stream<CommercioIdState> _mapCommercioIdDeriveDidDocumentEventToState(
    CommercioIdDeriveDidDocumentEvent event,
  ) async* {
    try {
      yield const CommercioIdDerivingDidDocumentLoading();

      final didDocument = await commercioId.derivateDidDocument();

      yield CommercioIdWithDerivedDidDocument(
          commercioId: commercioId, didDocument: didDocument);
    } catch (e) {
      yield CommercioIdDerivingDidDocumentError(e.toString());
    }
  }

  Stream<CommercioIdState> _mapCommercioIdSetDidDocumentEventToState(
    CommercioIdSetDidDocumentEvent event,
  ) async* {
    try {
      yield const CommercioIdSettingDidDocumentLoading();

      TransactionResult transactionResult;

      if (event.didDocument != null) {
        transactionResult =
            await commercioId.setDidDocument(didDocument: event.didDocument);
      } else {
        transactionResult = await commercioId.setDidDocument();
      }

      yield CommercioIdSetDidDocument(
          commercioId: commercioId, transactionResult: transactionResult);
    } catch (e) {
      yield CommercioIdSettingDidDocumentError(e.toString());
    }
  }

  Stream<CommercioIdState> _mapCommercioIdRechargeGovernmentEventToState(
    CommercioIdRechargeGovernmentEvent event,
  ) async* {
    try {
      yield const CommercioIdRechargingGovernmentLoading();

      TransactionResult transactionResult;

      if (event.rechargeFee != null && event.rechargeGas != null) {
        transactionResult = await commercioId.rechargeGovernment(
            rechargeAmount: event.rechargeAmount,
            rechargeFee: event.rechargeFee,
            rechargeGas: event.rechargeGas);
      } else {
        transactionResult = await commercioId.rechargeGovernment(
            rechargeAmount: event.rechargeAmount);
      }

      yield CommercioIdRechargedGovernment(
          commercioId: commercioId, transactionResult: transactionResult);
    } catch (e) {
      yield CommercioIdRechargingGovernmentError(e.toString());
    }
  }

  Stream<CommercioIdState> _mapCommercioIdRequestDidPowerUpEventToState(
    CommercioIdRequestDidPowerUpEvent event,
  ) async* {
    try {
      yield const CommercioIdRequestingDidPowerUpLoading();

      final transactionResult = await commercioId.requestDidPowerUp(
          pairwiseAddress: event.pairwiseAddress,
          amount: event.amount,
          rsaSignaturePrivateKey: event.rsaSignaturePrivateKey);

      yield CommercioIdRequestedDidPowerUp(
          commercioId: commercioId, transactionResult: transactionResult);
    } catch (e) {
      yield CommercioIdRequestingDidPowerUpError(e.toString());
    }
  }
}
