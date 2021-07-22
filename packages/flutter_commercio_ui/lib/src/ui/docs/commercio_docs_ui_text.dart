import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

class DeriveDocumentText extends CommercioText<
    CommercioDocsDeriveDocumentBloc,
    CommercioDocsDeriveDocumentEvent,
    CommercioDocsDeriveDocumentState,
    CommercioDocsDeriveDocumentStateInitial,
    CommercioDocsDeriveDocumentStateData,
    CommercioDocsDeriveDocumentStateLoading,
    CommercioDocsDeriveDocumentStateError> {
  const DeriveDocumentText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioDocsDeriveDocumentState state)
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

class ShareDocumentsText extends CommercioText<
    CommercioDocsShareDocumentsBloc,
    CommercioDocsShareDocumentsEvent,
    CommercioDocsSharedDocumentsState,
    CommercioDocsSharedDocumentsStateInitial,
    CommercioDocsSharedDocumentsStateData,
    CommercioDocsSharedDocumentsStateLoading,
    CommercioDocsSharedDocumentsStateError> {
  const ShareDocumentsText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioDocsSharedDocumentsState state)
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

class DeriveReceiptText extends CommercioText<
    CommercioDocsDeriveReceiptBloc,
    CommercioDocsDeriveReceiptEvent,
    CommercioDocsDeriveReceiptState,
    CommercioDocsDeriveReceiptStateInitial,
    CommercioDocsDeriveReceiptStateData,
    CommercioDocsDeriveReceiptStateLoading,
    CommercioDocsDeriveReceiptStateError> {
  const DeriveReceiptText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioDocsDeriveReceiptState state)
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

class SendReceiptsText extends CommercioText<
    CommercioDocsSendReceiptsBloc,
    CommercioDocsSendReceiptsEvent,
    CommercioDocsSentReceiptState,
    CommercioDocsSentReceiptStateInitial,
    CommercioDocsSentReceiptStateData,
    CommercioDocsSentReceiptStateLoading,
    CommercioDocsSentReceiptStateError> {
  const SendReceiptsText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioDocsSentReceiptState state)
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

class SentDocumentsText extends CommercioText<
    CommercioDocsSentDocumentsBloc,
    CommercioDocsSentDocumentsEvent,
    CommercioDocsSentDocumentsState,
    CommercioDocsSentDocumentsStateInitial,
    CommercioDocsSentDocumentsStateData,
    CommercioDocsSentDocumentsStateLoading,
    CommercioDocsSentDocumentsStateError> {
  const SentDocumentsText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioDocsSentDocumentsState state)
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

class ReceivedDocumentsText extends CommercioText<
    CommercioDocsReceivedDocumentsBloc,
    CommercioDocsReceivedDocumentsEvent,
    CommercioDocsReceivedDocumentsState,
    CommercioDocsReceivedDocumentsStateInitial,
    CommercioDocsReceivedDocumentsStateData,
    CommercioDocsReceivedDocumentsStateLoading,
    CommercioDocsReceivedDocumentsStateError> {
  const ReceivedDocumentsText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioDocsReceivedDocumentsState state)
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

class SentReceiptsText extends CommercioText<
    CommercioDocsSentReceiptsBloc,
    CommercioDocsSentReceiptsEvent,
    CommercioDocsSentReceiptsState,
    CommercioDocsSentReceiptsStateInitial,
    CommercioDocsSentReceiptsStateData,
    CommercioDocsSentReceiptsStateLoading,
    CommercioDocsSentReceiptsStateError> {
  const SentReceiptsText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioDocsSentReceiptsState state)
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

class ReceivedReceiptsText extends CommercioText<
    CommercioDocsReceivedReceiptsBloc,
    CommercioDocsReceivedReceiptsEvent,
    CommercioDocsReceivedReceiptsState,
    CommercioDocsReceivedReceiptsStateInitial,
    CommercioDocsReceivedReceiptsStateData,
    CommercioDocsReceivedReceiptsStateLoading,
    CommercioDocsReceivedReceiptsStateError> {
  const ReceivedReceiptsText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioDocsReceivedReceiptsState state)
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
