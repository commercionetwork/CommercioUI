import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

class GenerateKeysFlatButton extends CommercioTextButton<
    CommercioIdGenerateKeysBloc,
    CommercioIdGenerateKeysEvent,
    CommercioIdGeneratedKeysState,
    CommercioIdGeneratedKeysStateLoading,
    CommercioIdGeneratedKeysStateError> {
  const GenerateKeysFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioIdGenerateKeysEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}

class RestoreKeysFlatButton extends CommercioTextButton<
    CommercioIdRestoreKeysBloc,
    CommercioIdRestoreKeysEvent,
    CommercioIdRestoredKeysState,
    CommercioIdRestoredKeysStateLoading,
    CommercioIdRestoredKeysStateError> {
  const RestoreKeysFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioIdRestoreKeysEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}

class DeleteKeysFlatButton extends CommercioTextButton<
    CommercioIdDeleteKeysBloc,
    CommercioIdDeleteKeysEvent,
    CommercioIdDeletedKeysState,
    CommercioIdDeletedKeysStateLoading,
    CommercioIdDeletedKeysStateError> {
  const DeleteKeysFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioIdDeleteKeysEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}

class DeriveDidDocumentFlatButton extends CommercioTextButton<
    CommercioIdDeriveDidDocumentBloc,
    CommercioIdDeriveDidDocumentEvent,
    CommercioIdDerivedDidDocumentState,
    CommercioIdDerivedDidDocumentStateLoading,
    CommercioIdDerivedDidDocumentStateError> {
  const DeriveDidDocumentFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioIdDeriveDidDocumentEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}

class SetDidDocumentFlatButton extends CommercioTextButton<
    CommercioIdSetDidDocumentsBloc,
    CommercioIdSetDidDocumentsEvent,
    CommercioIdSetDidDocumentsState,
    CommercioIdSetDidDocumentsStateLoading,
    CommercioIdSetDidDocumentsStateError> {
  const SetDidDocumentFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioIdSetDidDocumentsEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}

class RechargeTumblerFlatButton extends CommercioTextButton<
    CommercioIdRechargeTumblerBloc,
    CommercioIdRechargeTumblerEvent,
    CommercioIdRechargedTumblerState,
    CommercioIdRechargedTumblerStateLoading,
    CommercioIdRechargedTumblerStateError> {
  const RechargeTumblerFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioIdRechargeTumblerEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}

class DeriveDidPowerUpRequestFlatButton extends CommercioTextButton<
    CommercioIdDeriveDidPowerUpRequestBloc,
    CommercioIdDeriveDidPowerUpRequestEvent,
    CommercioIdDeriveDidPowerUpRequestState,
    CommercioIdDeriveDidPowerUpRequestStateLoading,
    CommercioIdDeriveDidPowerUpRequestStateError> {
  const DeriveDidPowerUpRequestFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioIdDeriveDidPowerUpRequestEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}

class RequestDidPowerUpFlatButton extends CommercioTextButton<
    CommercioIdRequestDidPowerUpsBloc,
    CommercioIdRequestDidPowerUpsEvent,
    CommercioIdRequestedDidPowerUpsState,
    CommercioIdRequestedDidPowerUpsStateLoading,
    CommercioIdRequestedDidPowerUpsStateError> {
  const RequestDidPowerUpFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioIdRequestDidPowerUpsEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}
