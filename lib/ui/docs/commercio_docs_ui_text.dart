import 'dart:ui' as ui show TextHeightBehavior;

import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';

class ShareDocumentText extends CommercioTextWidget<
    CommercioDocsBloc,
    CommercioDocsEvent,
    CommercioDocsState,
    CommercioDocsShareDocumentLoading,
    CommercioDocsSharedDocument,
    CommercioDocsInitial> {
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
    @required String Function(CommercioDocsSharedDocument state) textCallback,
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

class ShareEncryptedDocumentText extends CommercioTextWidget<
    CommercioDocsBloc,
    CommercioDocsEvent,
    CommercioDocsState,
    CommercioDocsShareEncryptedDocumentLoading,
    CommercioDocsSharedEncryptedDocument,
    CommercioDocsInitial> {
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
        String Function(CommercioDocsSharedEncryptedDocument state)
            textCallback,
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

class SendReceiptText extends CommercioTextWidget<
    CommercioDocsBloc,
    CommercioDocsEvent,
    CommercioDocsState,
    CommercioDocsSendReceiptLoading,
    CommercioDocsSentReceipt,
    CommercioDocsInitial> {
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
    @required String Function(CommercioDocsSentReceipt state) textCallback,
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

class SentDocumentsText extends CommercioTextWidget<
    CommercioDocsBloc,
    CommercioDocsEvent,
    CommercioDocsState,
    CommercioDocsSentDocumentsLoading,
    CommercioDocsSentDocuments,
    CommercioDocsInitial> {
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
    @required String Function(CommercioDocsSentDocuments state) textCallback,
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

class ReceivedDocumentsText extends CommercioTextWidget<
    CommercioDocsBloc,
    CommercioDocsEvent,
    CommercioDocsState,
    CommercioDocsReceivedDocumentsLoading,
    CommercioDocsReceivedDocuments,
    CommercioDocsInitial> {
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
        String Function(CommercioDocsReceivedDocuments state) textCallback,
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