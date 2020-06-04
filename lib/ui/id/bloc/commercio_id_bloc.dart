import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/ui/bloc/commercio_state.dart';
import 'package:commerciosdk/entities/id/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'commercio_id_event.dart';
part 'commercio_id_state.dart';
part 'commercio_id_state_loading.dart';
part 'commercio_id_state_error.dart';

class CommercioIdBloc extends Bloc<CommercioIdEvent, CommercioIdState> {
  final StatefulCommercioId commercioId;

  CommercioIdBloc({
    @required StatefulCommercioAccount commercioAccount,
  }) : commercioId = StatefulCommercioId(commercioAccount: commercioAccount);

  @override
  CommercioIdState get initialState => const CommercioIdInitial();

  @override
  Stream<CommercioIdState> mapEventToState(
    CommercioIdEvent event,
  ) async* {
    if (event is CommercioIdGenerateKeysEvent) {
      try {
        yield const CommercioIdGeneratingKeysLoading();

        await commercioId.generateKeys();

        yield CommercioIdWithGeneratedKeys(commercioId: commercioId);
      } on Exception catch (e) {
        yield CommercioIdGeneratingKeysError(e.toString());
      }
    }

    if (event is CommercioIdRestoreKeysEvent) {
      try {
        yield const CommercioIdRestoringKeysLoading();

        await commercioId.restoreKeys();

        yield CommercioIdWithRestoredKeys(commercioId: commercioId);
      } on Exception catch (e) {
        yield CommercioIdRestoringKeysError(e.toString());
      }
    }

    if (event is CommercioIdDeleteKeysEvent) {
      try {
        yield const CommercioIdDeletingKeysLoading();

        await commercioId.deleteKeys();

        yield CommercioIdWithDeletedKeys(commercioId: commercioId);
      } on Exception catch (e) {
        yield CommercioIdDeletingKeysError(e.toString());
      }
    }

    if (event is CommercioIdDeriveDidDocumentEvent) {
      try {
        yield const CommercioIdDerivingDidDocumentLoading();

        final didDocument = await commercioId.derivateDidDocument();

        yield CommercioIdWithDerivedDidDocument(
            commercioId: commercioId, didDocument: didDocument);
      } on Exception catch (e) {
        yield CommercioIdDerivingDidDocumentError(e.toString());
      }
    }

    if (event is CommercioIdSetDidDocumentEvent) {
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
      } on Exception catch (e) {
        yield CommercioIdSettingDidDocumentError(e.toString());
      }
    }

    if (event is CommercioIdRechargeGovernmentEvent) {
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
      } on Exception catch (e) {
        yield CommercioIdRechargingGovernmentError(e.toString());
      }
    }

    if (event is CommercioIdRequestDidPowerUpEvent) {
      try {
        yield const CommercioIdRequestingDidPowerUpLoading();

        final transactionResult = await commercioId.requestDidPowerUp(
            pairwiseAddress: event.pairwiseAddress,
            amount: event.amount,
            rsaSignaturePrivateKey: event.rsaSignaturePrivateKey);

        yield CommercioIdRequestedDidPowerUp(
            commercioId: commercioId, transactionResult: transactionResult);
      } on Exception catch (e) {
        yield CommercioIdRequestingDidPowerUpError(e.toString());
      }
    }
  }
}
