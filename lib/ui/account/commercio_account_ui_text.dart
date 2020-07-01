import 'dart:ui' as ui show TextHeightBehavior;

import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';

class RestoreWalletText extends CommercioText<
    CommercioAccountRestoreWalletBloc,
    CommercioAccountRestoreWalletEvent,
    CommercioAccountRestoredWalletState,
    CommercioAccountRestoredWalletStateInitial,
    CommercioAccountRestoredWalletStateData,
    CommercioAccountRestoredWalletStateLoading,
    CommercioAccountRestoredWalletStateError> {
  const RestoreWalletText({
    Key key,
    TextStyle style,
    TextStyle loadingStyle,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
    ui.TextHeightBehavior textHeightBehavior,
    @required
        String Function(BuildContext context) loading,
    @required
        String Function(
      BuildContext context,
      CommercioAccountRestoredWalletStateData state,
    )
            text,
  }) : super(
          key: key,
          style: style,
          loadingStyle: loadingStyle,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          text: text,
          loading: loading,
        );
}

class GenerateWalletText extends CommercioText<
    CommercioAccountGenerateWalletBloc,
    CommercioAccountGenerateWalletEvent,
    CommercioAccountGenerateWalletState,
    CommercioAccountGenerateWalletInitial,
    CommercioAccountGenerateWalletData,
    CommercioAccountGenerateWalletLoading,
    CommercioAccountGenerateWalletError> {
  const GenerateWalletText({
    Key key,
    TextStyle style,
    TextStyle loadingStyle,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
    ui.TextHeightBehavior textHeightBehavior,
    @required
        String Function(BuildContext context) loading,
    @required
        String Function(
      BuildContext context,
      CommercioAccountGenerateWalletData state,
    )
            text,
  }) : super(
          key: key,
          style: style,
          loadingStyle: loadingStyle,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          text: text,
          loading: loading,
        );
}

class RequestFreeTokensText extends CommercioText<
    CommercioAccountRequestFreeTokensBloc,
    CommercioAccountRequestFreeTokensEvent,
    CommercioAccountFreeTokensState,
    CommercioAccountFreeTokensStateInitial,
    CommercioAccountFreeTokensStateData,
    CommercioAccountFreeTokensStateLoading,
    CommercioAccountFreeTokensStateError> {
  const RequestFreeTokensText({
    Key key,
    TextStyle style,
    TextStyle loadingStyle,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
    ui.TextHeightBehavior textHeightBehavior,
    @required
        String Function(BuildContext context) loading,
    @required
        String Function(
      BuildContext context,
      CommercioAccountFreeTokensStateData state,
    )
            text,
  }) : super(
          key: key,
          style: style,
          loadingStyle: loadingStyle,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          text: text,
          loading: loading,
        );
}

class CheckBalanceText extends CommercioText<
    CommercioAccountCheckBalanceBloc,
    CommercioAccountCheckBalanceEvent,
    CommercioAccountBalanceState,
    CommercioAccountBalanceStateInitial,
    CommercioAccountBalanceStateData,
    CommercioAccountBalanceStateLoading,
    CommercioAccountBalanceStateError> {
  const CheckBalanceText({
    Key key,
    TextStyle style,
    TextStyle loadingStyle,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
    ui.TextHeightBehavior textHeightBehavior,
    @required
        String Function(BuildContext context) loading,
    @required
        String Function(
      BuildContext context,
      CommercioAccountBalanceStateData state,
    )
            text,
  }) : super(
          key: key,
          style: style,
          loadingStyle: loadingStyle,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          text: text,
          loading: loading,
        );
}

class SendTokensText extends CommercioText<
    CommercioAccountSendTokensBloc,
    CommercioAccountSendTokensEvent,
    CommercioAccountSentTokensState,
    CommercioAccountSentTokensStateInitial,
    CommercioAccountSentTokensStateData,
    CommercioAccountSentTokensStateLoading,
    CommercioAccountSentTokensStateError> {
  const SendTokensText({
    Key key,
    TextStyle style,
    TextStyle loadingStyle,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
    ui.TextHeightBehavior textHeightBehavior,
    @required
        String Function(BuildContext context) loading,
    @required
        String Function(
      BuildContext context,
      CommercioAccountSentTokensStateData state,
    )
            text,
  }) : super(
          key: key,
          style: style,
          loadingStyle: loadingStyle,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          text: text,
          loading: loading,
        );
}

class GeneratePairwiseWalletText extends CommercioText<
    CommercioAccountGeneratePairwiseWalletBloc,
    CommercioAccountGeneratePairwiseWalletEvent,
    CommercioAccountPaiwiseWalletState,
    CommercioAccountPaiwiseWalletStateInitial,
    CommercioAccountPaiwiseWalletStateData,
    CommercioAccountPaiwiseWalletStateLoading,
    CommercioAccountPaiwiseWalletStateError> {
  const GeneratePairwiseWalletText({
    Key key,
    TextStyle style,
    TextStyle loadingStyle,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
    ui.TextHeightBehavior textHeightBehavior,
    @required
        String Function(BuildContext context) loading,
    @required
        String Function(
      BuildContext context,
      CommercioAccountPaiwiseWalletStateData state,
    )
            text,
  }) : super(
          key: key,
          style: style,
          loadingStyle: loadingStyle,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          text: text,
          loading: loading,
        );
}
