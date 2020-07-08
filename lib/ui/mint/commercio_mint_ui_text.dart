import 'dart:ui' as ui show TextHeightBehavior;

import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';

class OpenCdpText extends CommercioText<
    CommercioMintOpenCdpBloc,
    CommercioMintOpenCdpEvent,
    CommercioMintOpenedCdpState,
    CommercioMintOpenedCdpStateInitial,
    CommercioMintOpenedCdpStateData,
    CommercioMintOpenedCdpStateLoading,
    CommercioMintOpenedCdpStateError> {
  const OpenCdpText({
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
      CommercioMintOpenedCdpStateData state,
    )
            text,
    String Function(BuildContext context, String errorMessage) error,
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
          loading: loading,
          text: text,
          error: error,
        );
}

class CloseCdpText extends CommercioText<
    CommercioMintCloseCdpBloc,
    CommercioMintCloseCdpEvent,
    CommercioMintClosedCdpState,
    CommercioMintClosedCdpStateInitial,
    CommercioMintClosedCdpStateData,
    CommercioMintClosedCdpStateLoading,
    CommercioMintClosedCdpStateError> {
  const CloseCdpText({
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
      CommercioMintClosedCdpStateData state,
    )
            text,
    String Function(BuildContext context, String errorMessage) error,
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
          error: error,
        );
}
