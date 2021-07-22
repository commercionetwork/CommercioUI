import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

class DeriveDocumentFlatButton extends CommercioTextButton<
    CommercioDocsDeriveDocumentBloc,
    CommercioDocsDeriveDocumentEvent,
    CommercioDocsDeriveDocumentState,
    CommercioDocsDeriveDocumentStateLoading,
    CommercioDocsDeriveDocumentStateError> {
  const DeriveDocumentFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioDocsDeriveDocumentEvent Function()? event,
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

class ShareDocumentsFlatButton extends CommercioTextButton<
    CommercioDocsShareDocumentsBloc,
    CommercioDocsShareDocumentsEvent,
    CommercioDocsSharedDocumentsState,
    CommercioDocsSharedDocumentsStateLoading,
    CommercioDocsSharedDocumentsStateError> {
  const ShareDocumentsFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioDocsShareDocumentsEvent Function()? event,
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

class DeriveReceiptFlatButton extends CommercioTextButton<
    CommercioDocsDeriveReceiptBloc,
    CommercioDocsDeriveReceiptEvent,
    CommercioDocsDeriveReceiptState,
    CommercioDocsDeriveReceiptStateLoading,
    CommercioDocsDeriveReceiptStateError> {
  const DeriveReceiptFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioDocsDeriveReceiptEvent Function()? event,
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

class SendReceiptsFlatButton extends CommercioTextButton<
    CommercioDocsSendReceiptsBloc,
    CommercioDocsSendReceiptsEvent,
    CommercioDocsSentReceiptState,
    CommercioDocsSentReceiptStateLoading,
    CommercioDocsSentReceiptStateError> {
  const SendReceiptsFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioDocsSendReceiptsEvent Function()? event,
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

class SentDocumentsFlatButton extends CommercioTextButton<
    CommercioDocsSentDocumentsBloc,
    CommercioDocsSentDocumentsEvent,
    CommercioDocsSentDocumentsState,
    CommercioDocsSentDocumentsStateLoading,
    CommercioDocsSentDocumentsStateError> {
  const SentDocumentsFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioDocsSentDocumentsEvent Function()? event,
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

class ReceivedDocumentsFlatButton extends CommercioTextButton<
    CommercioDocsReceivedDocumentsBloc,
    CommercioDocsReceivedDocumentsEvent,
    CommercioDocsReceivedDocumentsState,
    CommercioDocsReceivedDocumentsStateLoading,
    CommercioDocsReceivedDocumentsStateError> {
  const ReceivedDocumentsFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioDocsReceivedDocumentsEvent Function()? event,
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

class SentReceiptsFlatButton extends CommercioTextButton<
    CommercioDocsSentReceiptsBloc,
    CommercioDocsSentReceiptsEvent,
    CommercioDocsSentReceiptsState,
    CommercioDocsSentReceiptsStateLoading,
    CommercioDocsSentReceiptsStateError> {
  const SentReceiptsFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioDocsSentReceiptsEvent Function()? event,
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

class ReceivedReceiptsFlatButton extends CommercioTextButton<
    CommercioDocsReceivedReceiptsBloc,
    CommercioDocsReceivedReceiptsEvent,
    CommercioDocsReceivedReceiptsState,
    CommercioDocsReceivedReceiptsStateLoading,
    CommercioDocsReceivedReceiptsStateError> {
  const ReceivedReceiptsFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioDocsReceivedReceiptsEvent Function()? event,
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
