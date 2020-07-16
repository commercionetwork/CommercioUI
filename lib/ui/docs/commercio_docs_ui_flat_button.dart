import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';

class DeriveDocumentFlatButton extends CommercioFlatButton<
    CommercioDocsDeriveDocumentBloc,
    CommercioDocsDeriveDocumentEvent,
    CommercioDocsDeriveDocumentState,
    CommercioDocsDeriveDocumentStateLoading,
    CommercioDocsDeriveDocumentStateError> {
  DeriveDocumentFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    @required CommercioDocsDeriveDocumentEvent Function() event,
    Widget Function(BuildContext context) child,
    Widget Function(BuildContext context) loading,
    void Function(BuildContext context, String errorMessage) error,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          child: child,
          error: error,
          event: event,
          loading: loading,
        );
}

class ShareDocumentsFlatButton extends CommercioFlatButton<
    CommercioDocsShareDocumentsBloc,
    CommercioDocsShareDocumentsEvent,
    CommercioDocsSharedDocumentsState,
    CommercioDocsSharedDocumentsStateLoading,
    CommercioDocsSharedDocumentsStateError> {
  ShareDocumentsFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    @required CommercioDocsShareDocumentsEvent Function() event,
    Widget Function(BuildContext context) child,
    Widget Function(BuildContext context) loading,
    void Function(BuildContext context, String errorMessage) error,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          child: child,
          error: error,
          event: event,
          loading: loading,
        );
}

class DeriveReceiptFlatButton extends CommercioFlatButton<
    CommercioDocsDeriveReceiptBloc,
    CommercioDocsDeriveReceiptEvent,
    CommercioDocsDeriveReceiptState,
    CommercioDocsDeriveReceiptStateLoading,
    CommercioDocsDeriveReceiptStateError> {
  DeriveReceiptFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    @required CommercioDocsDeriveReceiptEvent Function() event,
    Widget Function(BuildContext context) child,
    Widget Function(BuildContext context) loading,
    void Function(BuildContext context, String errorMessage) error,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          child: child,
          error: error,
          event: event,
          loading: loading,
        );
}

class SendReceiptsFlatButton extends CommercioFlatButton<
    CommercioDocsSendReceiptsBloc,
    CommercioDocsSendReceiptsEvent,
    CommercioDocsSentReceiptState,
    CommercioDocsSentReceiptStateLoading,
    CommercioDocsSentReceiptStateError> {
  SendReceiptsFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    @required CommercioDocsSendReceiptsEvent Function() event,
    Widget Function(BuildContext context) child,
    Widget Function(BuildContext context) loading,
    void Function(BuildContext context, String errorMessage) error,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          child: child,
          error: error,
          event: event,
          loading: loading,
        );
}

class SentDocumentsFlatButton extends CommercioFlatButton<
    CommercioDocsSentDocumentsBloc,
    CommercioDocsSentDocumentsEvent,
    CommercioDocsSentDocumentsState,
    CommercioDocsSentDocumentsStateLoading,
    CommercioDocsSentDocumentsStateError> {
  SentDocumentsFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    @required CommercioDocsSentDocumentsEvent Function() event,
    Widget Function(BuildContext context) child,
    Widget Function(BuildContext context) loading,
    void Function(BuildContext context, String errorMessage) error,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          child: child,
          error: error,
          event: event,
          loading: loading,
        );
}

class ReceivedDocumentsFlatButton extends CommercioFlatButton<
    CommercioDocsReceivedDocumentsBloc,
    CommercioDocsReceivedDocumentsEvent,
    CommercioDocsReceivedDocumentsState,
    CommercioDocsReceivedDocumentsStateLoading,
    CommercioDocsReceivedDocumentsStateError> {
  ReceivedDocumentsFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    @required CommercioDocsReceivedDocumentsEvent Function() event,
    Widget Function(BuildContext context) child,
    Widget Function(BuildContext context) loading,
    void Function(BuildContext context, String errorMessage) error,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          child: child,
          error: error,
          event: event,
          loading: loading,
        );
}

class SentReceiptsFlatButton extends CommercioFlatButton<
    CommercioDocsSentReceiptsBloc,
    CommercioDocsSentReceiptsEvent,
    CommercioDocsSentReceiptsState,
    CommercioDocsSentReceiptsStateLoading,
    CommercioDocsSentReceiptsStateError> {
  SentReceiptsFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    @required CommercioDocsSentReceiptsEvent Function() event,
    Widget Function(BuildContext context) child,
    Widget Function(BuildContext context) loading,
    void Function(BuildContext context, String errorMessage) error,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          child: child,
          error: error,
          event: event,
          loading: loading,
        );
}

class ReceivedReceiptsFlatButton extends CommercioFlatButton<
    CommercioDocsReceivedReceiptsBloc,
    CommercioDocsReceivedReceiptsEvent,
    CommercioDocsReceivedReceiptsState,
    CommercioDocsReceivedReceiptsStateLoading,
    CommercioDocsReceivedReceiptsStateError> {
  ReceivedReceiptsFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    @required CommercioDocsReceivedReceiptsEvent Function() event,
    Widget Function(BuildContext context) child,
    Widget Function(BuildContext context) loading,
    void Function(BuildContext context, String errorMessage) error,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          child: child,
          error: error,
          event: event,
          loading: loading,
        );
}
