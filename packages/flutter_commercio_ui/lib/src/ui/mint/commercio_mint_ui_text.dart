import 'dart:ui' as ui show TextHeightBehavior;

import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

class DeriveMintCccText extends CommercioText<
    CommercioDeriveMintCCCBloc,
    CommercioDeriveMintCCCEvent,
    CommercioMintDeriveCCCState,
    CommercioMintDeriveCCCStateInitial,
    CommercioMintDeriveCCCStateData,
    CommercioMintDeriveCCCStateLoading,
    CommercioMintDeriveCCCStateError> {
  const DeriveMintCccText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioMintDeriveCCCState state)
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

class MintCccText extends CommercioText<
    CommercioMintCCCBloc,
    CommercioMintCCCEvent,
    CommercioMintMintedCCCState,
    CommercioMintMintedCCCStateInitial,
    CommercioMintMintedCCCStateData,
    CommercioMintMintedCCCStateLoading,
    CommercioMintMintedCCCStateError> {
  const MintCccText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioMintMintedCCCState state)
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

class DeriveBurnCccText extends CommercioText<
    CommercioMintDeriveBurnCccBloc,
    CommercioMintDeriveBurnCCCEvent,
    CommercioMintDeriveBurnCCCState,
    CommercioMintDeriveBurnCCCStateInitial,
    CommercioMintDeriveBurnCCCStateData,
    CommercioMintDeriveBurnCCCStateLoading,
    CommercioMintDeriveBurnCCCStateError> {
  const DeriveBurnCccText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioMintDeriveBurnCCCState state)
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

class BurnCccText extends CommercioText<
    CommercioMintBurnCccBloc,
    CommercioMintBurnCCCEvent,
    CommercioMintBurnCCCState,
    CommercioMintBurnCCCStateInitial,
    CommercioMintBurnCCCStateData,
    CommercioMintBurnCCCStateLoading,
    CommercioMintBurnCCCStateError> {
  const BurnCccText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioMintBurnCCCState state)
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

class GetExchangeTradePositionsText extends CommercioText<
    CommercioMintGetExchangeTradePositionsBloc,
    CommercioMintGetExchangeTradePositionsEvent,
    CommercioMintGetExchangeTradePositionsState,
    CommercioMintGetExchangeTradePositionsStateInitial,
    CommercioMintGetExchangeTradePositionsStateData,
    CommercioMintGetExchangeTradePositionsStateLoading,
    CommercioMintGetExchangeTradePositionsStateError> {
  const GetExchangeTradePositionsText({
    required String Function(BuildContext context) loading,
    required String Function(BuildContext context,
            CommercioMintGetExchangeTradePositionsState state)
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
