import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

class CommercioIdGenerateKeysBloc
    extends Bloc<CommercioIdGenerateKeysEvent, CommercioIdGeneratedKeysState> {
  final StatefulCommercioId commercioId;

  CommercioIdGenerateKeysBloc({@required this.commercioId})
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

  CommercioIdRestoreKeysBloc({@required this.commercioId})
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

  CommercioIdDeleteKeysBloc({@required this.commercioId})
      : super(const CommercioIdDeletedKeysStateInitial());

  @override
  Stream<CommercioIdDeletedKeysState> mapEventToState(
    CommercioIdDeleteKeysEvent event,
  ) async* {
    try {
      yield const CommercioIdDeletedKeysStateLoading();

      await commercioId.deleteKeys();

      yield CommercioIdDeletedKeysStateData();
    } catch (e) {
      yield CommercioIdDeletedKeysStateError(e.toString());
    }
  }
}

class CommercioIdDeriveDidDocumentBloc extends Bloc<
    CommercioIdDeriveDidDocumentEvent, CommercioIdDerivedDidDocumentState> {
  final StatefulCommercioId commercioId;

  CommercioIdDeriveDidDocumentBloc({@required this.commercioId})
      : super(const CommercioIdDerivedDidDocumentStateInitial());

  @override
  Stream<CommercioIdDerivedDidDocumentState> mapEventToState(
    CommercioIdDeriveDidDocumentEvent event,
  ) async* {
    try {
      yield const CommercioIdDerivedDidDocumentStateLoading();

      final didDocument = await commercioId.derivateDidDocument();

      yield CommercioIdDerivedDidDocumentStateData(didDocument: didDocument);
    } catch (e) {
      yield CommercioIdDerivedDidDocumentStateError(e.toString());
    }
  }
}

class CommercioIdSetDidDocumentBloc extends Bloc<CommercioIdSetDidDocumentEvent,
    CommercioIdSetDidDocumentState> {
  final StatefulCommercioId commercioId;

  CommercioIdSetDidDocumentBloc({@required this.commercioId})
      : super(const CommercioIdSetDidDocumentStateInitial());

  @override
  Stream<CommercioIdSetDidDocumentState> mapEventToState(
    CommercioIdSetDidDocumentEvent event,
  ) async* {
    try {
      yield const CommercioIdSetDidDocumentStateLoading();

      TransactionResult result;

      if (event.didDocument != null) {
        result = await commercioId.setDidDocument(
          didDocument: event.didDocument,
        );
      } else {
        result = await commercioId.setDidDocument();
      }

      yield CommercioIdSetDidDocumentStateData(result: result);
    } catch (e) {
      yield CommercioIdSetDidDocumentStateError(e.toString());
    }
  }
}

class CommercioIdRechargeTumblerBloc extends Bloc<
    CommercioIdRechargeTumblerEvent, CommercioIdRechargedTumblerState> {
  final StatefulCommercioId commercioId;

  CommercioIdRechargeTumblerBloc({@required this.commercioId})
      : super(const CommercioIdRechargedTumblerStateInitial());

  @override
  Stream<CommercioIdRechargedTumblerState> mapEventToState(
    CommercioIdRechargeTumblerEvent event,
  ) async* {
    try {
      yield const CommercioIdRechargedTumblerStateLoading();

      TransactionResult result;

      if (event.rechargeFee != null && event.rechargeGas != null) {
        result = await commercioId.rechargeTumbler(
          rechargeAmount: event.rechargeAmount,
          rechargeFee: event.rechargeFee,
          rechargeGas: event.rechargeGas,
        );
      } else {
        result = await commercioId.rechargeTumbler(
          rechargeAmount: event.rechargeAmount,
        );
      }

      yield CommercioIdRechargedTumblerStateData(result: result);
    } catch (e) {
      yield CommercioIdRechargedTumblerStateError(e.toString());
    }
  }
}

class CommercioIdRequestDidPowerUpBloc extends Bloc<
    CommercioIdRequestDidPowerUpEvent, CommercioIdRequestedDidPowerUpState> {
  final StatefulCommercioId commercioId;

  CommercioIdRequestDidPowerUpBloc({@required this.commercioId})
      : super(const CommercioIdRequestedDidPowerUpStateInitial());

  @override
  Stream<CommercioIdRequestedDidPowerUpState> mapEventToState(
    CommercioIdRequestDidPowerUpEvent event,
  ) async* {
    try {
      yield const CommercioIdRequestedDidPowerUpStateLoading();

      final result = await commercioId.requestDidPowerUp(
        pairwiseAddress: event.pairwiseAddress,
        amount: event.amount,
        rsaSignaturePrivateKey: event.rsaSignaturePrivateKey,
      );

      yield CommercioIdRequestedDidPowerUpStateData(result: result);
    } catch (e) {
      yield CommercioIdRequestedDidPowerUpStateError(e.toString());
    }
  }
}
