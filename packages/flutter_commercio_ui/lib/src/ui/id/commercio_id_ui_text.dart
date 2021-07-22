import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

class GenerateKeysText extends CommercioText<
    CommercioIdGenerateKeysBloc,
    CommercioIdGenerateKeysEvent,
    CommercioIdGeneratedKeysState,
    CommercioIdGeneratedKeysStateInitial,
    CommercioIdGeneratedKeysStateData,
    CommercioIdGeneratedKeysStateLoading,
    CommercioIdGeneratedKeysStateError> {
  const GenerateKeysText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioIdGeneratedKeysState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}

class RestoreKeysText extends CommercioText<
    CommercioIdRestoreKeysBloc,
    CommercioIdRestoreKeysEvent,
    CommercioIdRestoredKeysState,
    CommercioIdRestoredKeysStateInitial,
    CommercioIdRestoredKeysStateData,
    CommercioIdRestoredKeysStateLoading,
    CommercioIdRestoredKeysStateError> {
  const RestoreKeysText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioIdRestoredKeysState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}

class DeleteKeysText extends CommercioText<
    CommercioIdDeleteKeysBloc,
    CommercioIdDeleteKeysEvent,
    CommercioIdDeletedKeysState,
    CommercioIdDeletedKeysStateInitial,
    CommercioIdDeletedKeysStateData,
    CommercioIdDeletedKeysStateLoading,
    CommercioIdDeletedKeysStateError> {
  const DeleteKeysText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioIdDeletedKeysState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}

class DeriveDidDocumentText extends CommercioText<
    CommercioIdDeriveDidDocumentBloc,
    CommercioIdDeriveDidDocumentEvent,
    CommercioIdDerivedDidDocumentState,
    CommercioIdDerivedDidDocumentStateInitial,
    CommercioIdDerivedDidDocumentStateData,
    CommercioIdDerivedDidDocumentStateLoading,
    CommercioIdDerivedDidDocumentStateError> {
  const DeriveDidDocumentText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioIdDerivedDidDocumentState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}

class SetDidDocumentText extends CommercioText<
    CommercioIdSetDidDocumentsBloc,
    CommercioIdSetDidDocumentsEvent,
    CommercioIdSetDidDocumentsState,
    CommercioIdSetDidDocumentsStateInitial,
    CommercioIdSetDidDocumentsStateData,
    CommercioIdSetDidDocumentsStateLoading,
    CommercioIdSetDidDocumentsStateError> {
  const SetDidDocumentText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioIdSetDidDocumentsState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}

class RechargeTumblerText extends CommercioText<
    CommercioIdRechargeTumblerBloc,
    CommercioIdRechargeTumblerEvent,
    CommercioIdRechargedTumblerState,
    CommercioIdRechargedTumblerStateInitial,
    CommercioIdRechargedTumblerStateData,
    CommercioIdRechargedTumblerStateLoading,
    CommercioIdRechargedTumblerStateError> {
  const RechargeTumblerText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioIdRechargedTumblerState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}

class DeriveDidPowerUpRequestText extends CommercioText<
    CommercioIdDeriveDidPowerUpRequestBloc,
    CommercioIdDeriveDidPowerUpRequestEvent,
    CommercioIdDeriveDidPowerUpRequestState,
    CommercioIdDeriveDidPowerUpRequestStateInitial,
    CommercioIdDeriveDidPowerUpRequestStateData,
    CommercioIdDeriveDidPowerUpRequestStateLoading,
    CommercioIdDeriveDidPowerUpRequestStateError> {
  const DeriveDidPowerUpRequestText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioIdDeriveDidPowerUpRequestState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}

class RequestDidPowerUpText extends CommercioText<
    CommercioIdRequestDidPowerUpsBloc,
    CommercioIdRequestDidPowerUpsEvent,
    CommercioIdRequestedDidPowerUpsState,
    CommercioIdRequestedDidPowerUpsStateInitial,
    CommercioIdRequestedDidPowerUpsStateData,
    CommercioIdRequestedDidPowerUpsStateLoading,
    CommercioIdRequestedDidPowerUpsStateError> {
  const RequestDidPowerUpText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioIdRequestedDidPowerUpsState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}
