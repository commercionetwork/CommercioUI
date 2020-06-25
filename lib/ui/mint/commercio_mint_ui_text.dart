import 'dart:ui' as ui show TextHeightBehavior;

import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';

class OpenCdpText extends CommercioTextWidget<
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
        String Function(CommercioMintOpenedCdpStateData state) textCallback,
    @required String Function() loadingTextCallback,
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
          textCallback: textCallback,
          loadingTextCallback: loadingTextCallback,
        );
}

class CloseCdpText extends CommercioTextWidget<
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
        String Function(CommercioMintClosedCdpStateData state) textCallback,
    @required String Function() loadingTextCallback,
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
          textCallback: textCallback,
          loadingTextCallback: loadingTextCallback,
        );
}
