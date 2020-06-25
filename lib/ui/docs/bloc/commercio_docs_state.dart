import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

part 'commercio_docs_state.freezed.dart';

abstract class CommercioDocsState extends CommercioState {
  const CommercioDocsState();
}

@freezed
@Implements(CommercioDocsState)
abstract class CommercioDocsSharedDocumentState
    with _$CommercioDocsSharedDocumentState {
  const factory CommercioDocsSharedDocumentState({
    @required TransactionResult result,
  }) = CommercioDocsSharedDocumentStateData;

  const factory CommercioDocsSharedDocumentState.initial() =
      CommercioDocsSharedDocumentStateInitial;

  const factory CommercioDocsSharedDocumentState.loading() =
      CommercioDocsSharedDocumentStateLoading;

  const factory CommercioDocsSharedDocumentState.error([String error]) =
      CommercioDocsSharedDocumentStateError;
}

@freezed
@Implements(CommercioDocsState)
abstract class CommercioDocsSharedEncryptedDocumentState
    with _$CommercioDocsSharedEncryptedDocumentState {
  const factory CommercioDocsSharedEncryptedDocumentState({
    @required TransactionResult result,
  }) = CommercioDocsSharedEncryptedDocumentStateData;

  const factory CommercioDocsSharedEncryptedDocumentState.initial() =
      CommercioDocsSharedEncryptedDocumentStateInitial;

  const factory CommercioDocsSharedEncryptedDocumentState.loading() =
      CommercioDocsSharedEncryptedDocumentStateLoading;

  const factory CommercioDocsSharedEncryptedDocumentState.error(
      [String error]) = CommercioDocsSharedEncryptedDocumentStateError;
}

@freezed
@Implements(CommercioDocsState)
abstract class CommercioDocsSentReceiptState
    with _$CommercioDocsSentReceiptState {
  const factory CommercioDocsSentReceiptState({
    @required TransactionResult result,
  }) = CommercioDocsSentReceiptStateData;

  const factory CommercioDocsSentReceiptState.initial() =
      CommercioDocsSentReceiptStateInitial;

  const factory CommercioDocsSentReceiptState.loading() =
      CommercioDocsSentReceiptStateLoading;

  const factory CommercioDocsSentReceiptState.error([String error]) =
      CommercioDocsSentReceiptStateError;
}

@freezed
@Implements(CommercioDocsState)
abstract class CommercioDocsSentDocumentsState
    with _$CommercioDocsSentDocumentsState {
  const factory CommercioDocsSentDocumentsState({
    @required List<CommercioDoc> sentDocuments,
  }) = CommercioDocsSentDocumentsStateData;

  const factory CommercioDocsSentDocumentsState.initial() =
      CommercioDocsSentDocumentsStateInitial;

  const factory CommercioDocsSentDocumentsState.loading() =
      CommercioDocsSentDocumentsStateLoading;

  const factory CommercioDocsSentDocumentsState.error([String error]) =
      CommercioDocsSentDocumentsStateError;
}

@freezed
@Implements(CommercioDocsState)
abstract class CommercioDocsReceivedDocumentsState
    with _$CommercioDocsReceivedDocumentsState {
  const factory CommercioDocsReceivedDocumentsState({
    @required List<CommercioDoc> receivedDocuments,
  }) = CommercioDocsReceivedDocumentsStateData;

  const factory CommercioDocsReceivedDocumentsState.initial() =
      CommercioDocsReceivedDocumentsStateInitial;

  const factory CommercioDocsReceivedDocumentsState.loading() =
      CommercioDocsReceivedDocumentsStateLoading;

  const factory CommercioDocsReceivedDocumentsState.error([String error]) =
      CommercioDocsReceivedDocumentsStateError;
}

@freezed
@Implements(CommercioDocsState)
abstract class CommercioDocsSentReceiptsState
    with _$CommercioDocsSentReceiptsState {
  const factory CommercioDocsSentReceiptsState({
    @required List<CommercioDocReceipt> sentReceipts,
  }) = CommercioDocsSentReceiptsStateData;

  const factory CommercioDocsSentReceiptsState.initial() =
      CommercioDocsSentReceiptsStateInitial;

  const factory CommercioDocsSentReceiptsState.loading() =
      CommercioDocsSentReceiptsStateLoading;

  const factory CommercioDocsSentReceiptsState.error([String error]) =
      CommercioDocsSentReceiptsStateError;
}

@freezed
@Implements(CommercioDocsState)
abstract class CommercioDocsReceivedReceiptsState
    with _$CommercioDocsReceivedReceiptsState {
  const factory CommercioDocsReceivedReceiptsState({
    @required List<CommercioDocReceipt> receivedReceipts,
  }) = CommercioDocsReceivedReceiptsStateData;

  const factory CommercioDocsReceivedReceiptsState.initial() =
      CommercioDocsReceivedReceiptsStateInitial;

  const factory CommercioDocsReceivedReceiptsState.loading() =
      CommercioDocsReceivedReceiptsStateLoading;

  const factory CommercioDocsReceivedReceiptsState.error([String error]) =
      CommercioDocsReceivedReceiptsStateError;
}

@freezed
@Implements(CommercioDocsState)
abstract class CommercioDocsEncDataState with _$CommercioDocsEncDataState {
  const factory CommercioDocsEncDataState({
    @required Map<EncryptedData, bool> encryptedData,
  }) = CommercioDocsEncDataStateData;

  const factory CommercioDocsEncDataState.initial({
    @required Map<EncryptedData, bool> encryptedData,
  }) = CommercioDocsEncDataStateInitial;

  const factory CommercioDocsEncDataState.loading() =
      CommercioDocsEncDataStateLoading;

  const factory CommercioDocsEncDataState.error([String error]) =
      CommercioDocsEncDataStateError;
}
