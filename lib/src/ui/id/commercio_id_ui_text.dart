import 'dart:ui' as ui show TextHeightBehavior;

import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';

class GenerateKeysText extends CommercioText<
    CommercioIdGenerateKeysBloc,
    CommercioIdGenerateKeysEvent,
    CommercioIdGeneratedKeysState,
    CommercioIdGeneratedKeysStateInitial,
    CommercioIdGeneratedKeysStateData,
    CommercioIdGeneratedKeysStateLoading,
    CommercioIdGeneratedKeysStateError> {
  const GenerateKeysText({
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
      CommercioIdGeneratedKeysStateData state,
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

class RestoreKeysText extends CommercioText<
    CommercioIdRestoreKeysBloc,
    CommercioIdRestoreKeysEvent,
    CommercioIdRestoredKeysState,
    CommercioIdRestoredKeysStateInitial,
    CommercioIdRestoredKeysStateData,
    CommercioIdRestoredKeysStateLoading,
    CommercioIdRestoredKeysStateError> {
  const RestoreKeysText({
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
      CommercioIdRestoredKeysStateData state,
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

class DeleteKeysText extends CommercioText<
    CommercioIdDeleteKeysBloc,
    CommercioIdDeleteKeysEvent,
    CommercioIdDeletedKeysState,
    CommercioIdDeletedKeysStateInitial,
    CommercioIdDeletedKeysStateData,
    CommercioIdDeletedKeysStateLoading,
    CommercioIdDeletedKeysStateError> {
  const DeleteKeysText({
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
      CommercioIdDeletedKeysStateData state,
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

class DeriveDidDocumentText extends CommercioText<
    CommercioIdDeriveDidDocumentBloc,
    CommercioIdDeriveDidDocumentEvent,
    CommercioIdDerivedDidDocumentState,
    CommercioIdDerivedDidDocumentStateInitial,
    CommercioIdDerivedDidDocumentStateData,
    CommercioIdDerivedDidDocumentStateLoading,
    CommercioIdDerivedDidDocumentStateError> {
  const DeriveDidDocumentText({
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
    @required String Function(BuildContext context) loading,
    @required
        String Function(BuildContext context,
                CommercioIdDerivedDidDocumentStateData state)
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

class SetDidDocumentText extends CommercioText<
    CommercioIdSetDidDocumentsBloc,
    CommercioIdSetDidDocumentsEvent,
    CommercioIdSetDidDocumentsState,
    CommercioIdSetDidDocumentsStateInitial,
    CommercioIdSetDidDocumentsStateData,
    CommercioIdSetDidDocumentsStateLoading,
    CommercioIdSetDidDocumentsStateError> {
  const SetDidDocumentText({
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
    @required String Function(BuildContext context) loading,
    @required
        String Function(
                BuildContext context, CommercioIdSetDidDocumentsStateData state)
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

class RechargeTumblerText extends CommercioText<
    CommercioIdRechargeTumblerBloc,
    CommercioIdRechargeTumblerEvent,
    CommercioIdRechargedTumblerState,
    CommercioIdRechargedTumblerStateInitial,
    CommercioIdRechargedTumblerStateData,
    CommercioIdRechargedTumblerStateLoading,
    CommercioIdRechargedTumblerStateError> {
  const RechargeTumblerText({
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
    @required String Function(BuildContext context) loading,
    @required
        String Function(BuildContext context,
                CommercioIdRechargedTumblerStateData state)
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

class DeriveDidPowerUpRequestText extends CommercioText<
    CommercioIdDeriveDidPowerUpRequestBloc,
    CommercioIdDeriveDidPowerUpRequestEvent,
    CommercioIdDeriveDidPowerUpRequestState,
    CommercioIdDeriveDidPowerUpRequestStateInitial,
    CommercioIdDeriveDidPowerUpRequestStateData,
    CommercioIdDeriveDidPowerUpRequestStateLoading,
    CommercioIdDeriveDidPowerUpRequestStateError> {
  const DeriveDidPowerUpRequestText({
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
      CommercioIdDeriveDidPowerUpRequestStateData state,
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

class RequestDidPowerUpText extends CommercioText<
    CommercioIdRequestDidPowerUpsBloc,
    CommercioIdRequestDidPowerUpsEvent,
    CommercioIdRequestedDidPowerUpsState,
    CommercioIdRequestedDidPowerUpsStateInitial,
    CommercioIdRequestedDidPowerUpsStateData,
    CommercioIdRequestedDidPowerUpsStateLoading,
    CommercioIdRequestedDidPowerUpsStateError> {
  const RequestDidPowerUpText({
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
      CommercioIdRequestedDidPowerUpsStateData state,
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
