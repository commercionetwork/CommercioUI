import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

class GenerateWalletFlatButton extends CommercioTextButton<
    CommercioAccountGenerateWalletBloc,
    CommercioAccountGenerateWalletEvent,
    CommercioAccountGenerateWalletState,
    CommercioAccountGenerateWalletLoading,
    CommercioAccountGenerateWalletError> {
  const GenerateWalletFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioAccountGenerateWalletEvent Function()? event,
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

class RestoreWalletFlatButton extends CommercioTextButton<
    CommercioAccountRestoreWalletBloc,
    CommercioAccountRestoreWalletEvent,
    CommercioAccountRestoredWalletState,
    CommercioAccountRestoredWalletStateLoading,
    CommercioAccountRestoredWalletStateError> {
  const RestoreWalletFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioAccountRestoreWalletEvent Function()? event,
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

class RequestFreeTokensFlatButton extends CommercioTextButton<
    CommercioAccountRequestFreeTokensBloc,
    CommercioAccountRequestFreeTokensEvent,
    CommercioAccountFreeTokensState,
    CommercioAccountFreeTokensStateLoading,
    CommercioAccountFreeTokensStateError> {
  const RequestFreeTokensFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioAccountRequestFreeTokensEvent Function()? event,
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

class CheckBalanceFlatButton extends CommercioTextButton<
    CommercioAccountCheckBalanceBloc,
    CommercioAccountCheckBalanceEvent,
    CommercioAccountBalanceState,
    CommercioAccountBalanceStateLoading,
    CommercioAccountBalanceStateError> {
  const CheckBalanceFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioAccountCheckBalanceEvent Function()? event,
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

class SendTokensFlatButton extends CommercioTextButton<
    CommercioAccountSendTokensBloc,
    CommercioAccountSendTokensEvent,
    CommercioAccountSentTokensState,
    CommercioAccountSentTokensStateLoading,
    CommercioAccountSentTokensStateError> {
  const SendTokensFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioAccountSendTokensEvent Function()? event,
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

class GenerateQrFlatButton extends CommercioTextButton<
    CommercioAccountGenerateQrBloc,
    CommercioAccountGenerateQrEvent,
    CommercioAccountQrState,
    CommercioAccountQrStateLoading,
    CommercioAccountQrStateError> {
  const GenerateQrFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioAccountGenerateQrEvent Function()? event,
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

class GeneratePairwiseWalletFlatButton extends CommercioTextButton<
    CommercioAccountGeneratePairwiseWalletBloc,
    CommercioAccountGeneratePairwiseWalletEvent,
    CommercioAccountPaiwiseWalletState,
    CommercioAccountPaiwiseWalletStateLoading,
    CommercioAccountPaiwiseWalletStateError> {
  const GeneratePairwiseWalletFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioAccountGeneratePairwiseWalletEvent Function()? event,
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
