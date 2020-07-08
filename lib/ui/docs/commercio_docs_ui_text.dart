import 'dart:ui' as ui show TextHeightBehavior;

import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';

class ShareDocumentText extends CommercioText<
    CommercioDocsShareDocumentBloc,
    CommercioDocsShareDocumentEvent,
    CommercioDocsSharedDocumentState,
    CommercioDocsSharedDocumentStateInitial,
    CommercioDocsSharedDocumentStateData,
    CommercioDocsSharedDocumentStateLoading,
    CommercioDocsSharedDocumentStateError> {
  const ShareDocumentText({
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
      CommercioDocsSharedDocumentStateData state,
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

class ShareEncryptedDocumentText extends CommercioText<
    CommercioDocsShareEncryptedDocumentBloc,
    CommercioDocsShareEncryptedDocumentEvent,
    CommercioDocsSharedEncryptedDocumentState,
    CommercioDocsSharedEncryptedDocumentStateInitial,
    CommercioDocsSharedEncryptedDocumentStateData,
    CommercioDocsSharedEncryptedDocumentStateLoading,
    CommercioDocsSharedEncryptedDocumentStateError> {
  const ShareEncryptedDocumentText({
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
      CommercioDocsSharedEncryptedDocumentStateData state,
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

class SendReceiptText extends CommercioText<
    CommercioDocsSendReceiptBloc,
    CommercioDocsSendReceiptEvent,
    CommercioDocsSentReceiptState,
    CommercioDocsSentReceiptStateInitial,
    CommercioDocsSentReceiptStateData,
    CommercioDocsSentReceiptStateLoading,
    CommercioDocsSentReceiptStateError> {
  const SendReceiptText({
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
      CommercioDocsSentReceiptStateData state,
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

class SentDocumentsText extends CommercioText<
    CommercioDocsSentDocumentsBloc,
    CommercioDocsSentDocumentsEvent,
    CommercioDocsSentDocumentsState,
    CommercioDocsSentDocumentsStateInitial,
    CommercioDocsSentDocumentsStateData,
    CommercioDocsSentDocumentsStateLoading,
    CommercioDocsSentDocumentsStateError> {
  const SentDocumentsText({
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
      CommercioDocsSentDocumentsStateData state,
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

class ReceivedDocumentsText extends CommercioText<
    CommercioDocsReceivedDocumentsBloc,
    CommercioDocsReceivedDocumentsEvent,
    CommercioDocsReceivedDocumentsState,
    CommercioDocsReceivedDocumentsStateInitial,
    CommercioDocsReceivedDocumentsStateData,
    CommercioDocsReceivedDocumentsStateLoading,
    CommercioDocsReceivedDocumentsStateError> {
  const ReceivedDocumentsText({
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
      CommercioDocsReceivedDocumentsStateData state,
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

class SentReceiptsText extends CommercioText<
    CommercioDocsSentReceiptsBloc,
    CommercioDocsSentReceiptsEvent,
    CommercioDocsSentReceiptsState,
    CommercioDocsSentReceiptsStateInitial,
    CommercioDocsSentReceiptsStateData,
    CommercioDocsSentReceiptsStateLoading,
    CommercioDocsSentReceiptsStateError> {
  const SentReceiptsText({
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
      CommercioDocsSentReceiptsStateData state,
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

class ReceivedReceiptsText extends CommercioText<
    CommercioDocsReceivedReceiptsBloc,
    CommercioDocsReceivedReceiptsEvent,
    CommercioDocsReceivedReceiptsState,
    CommercioDocsReceivedReceiptsStateInitial,
    CommercioDocsReceivedReceiptsStateData,
    CommercioDocsReceivedReceiptsStateLoading,
    CommercioDocsReceivedReceiptsStateError> {
  const ReceivedReceiptsText({
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
      CommercioDocsReceivedReceiptsStateData state,
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
