import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

class DeriveMintCccFlatButton extends CommercioTextButton<
    CommercioDeriveMintCCCBloc,
    CommercioDeriveMintCCCEvent,
    CommercioMintDeriveCCCState,
    CommercioMintDeriveCCCStateLoading,
    CommercioMintDeriveCCCStateError> {
  const DeriveMintCccFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioDeriveMintCCCEvent Function()? event,
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

class MintCccFlatButton extends CommercioTextButton<
    CommercioMintCCCBloc,
    CommercioMintCCCEvent,
    CommercioMintMintedCCCState,
    CommercioMintMintedCCCStateLoading,
    CommercioMintMintedCCCStateError> {
  const MintCccFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioMintCCCEvent Function()? event,
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

class DeriveBurnCccFlatButton extends CommercioTextButton<
    CommercioMintDeriveBurnCccBloc,
    CommercioMintDeriveBurnCCCEvent,
    CommercioMintDeriveBurnCCCState,
    CommercioMintDeriveBurnCCCStateLoading,
    CommercioMintDeriveBurnCCCStateError> {
  const DeriveBurnCccFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioMintDeriveBurnCCCEvent Function()? event,
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

class BurnCccFlatButton extends CommercioTextButton<
    CommercioMintBurnCccBloc,
    CommercioMintBurnCCCEvent,
    CommercioMintBurnCCCState,
    CommercioMintBurnCCCStateLoading,
    CommercioMintBurnCCCStateError> {
  const BurnCccFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioMintBurnCCCEvent Function()? event,
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

class GetExchangeTradePositionsFlatButton extends CommercioTextButton<
    CommercioMintGetExchangeTradePositionsBloc,
    CommercioMintGetExchangeTradePositionsEvent,
    CommercioMintGetExchangeTradePositionsState,
    CommercioMintGetExchangeTradePositionsStateLoading,
    CommercioMintGetExchangeTradePositionsStateError> {
  const GetExchangeTradePositionsFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioMintGetExchangeTradePositionsEvent Function()? event,
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
