import 'package:commerciosdk/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sacco/sacco.dart';

part 'commercio_docs_state.freezed.dart';

@freezed
class CommercioDocsDeriveDocumentState with _$CommercioDocsDeriveDocumentState {
  const factory CommercioDocsDeriveDocumentState({
    required CommercioDoc commercioDoc,
  }) = CommercioDocsDeriveDocumentStateData;

  const factory CommercioDocsDeriveDocumentState.initial() =
      CommercioDocsDeriveDocumentStateInitial;

  const factory CommercioDocsDeriveDocumentState.loading() =
      CommercioDocsDeriveDocumentStateLoading;

  const factory CommercioDocsDeriveDocumentState.error([String? error]) =
      CommercioDocsDeriveDocumentStateError;
}

@freezed
class CommercioDocsSharedDocumentsState
    with _$CommercioDocsSharedDocumentsState {
  const factory CommercioDocsSharedDocumentsState({
    required TransactionResult result,
  }) = CommercioDocsSharedDocumentsStateData;

  const factory CommercioDocsSharedDocumentsState.initial() =
      CommercioDocsSharedDocumentsStateInitial;

  const factory CommercioDocsSharedDocumentsState.loading() =
      CommercioDocsSharedDocumentsStateLoading;

  const factory CommercioDocsSharedDocumentsState.error([String? error]) =
      CommercioDocsSharedDocumentsStateError;
}

@freezed
class CommercioDocsSentReceiptState with _$CommercioDocsSentReceiptState {
  const factory CommercioDocsSentReceiptState({
    required TransactionResult result,
  }) = CommercioDocsSentReceiptStateData;

  const factory CommercioDocsSentReceiptState.initial() =
      CommercioDocsSentReceiptStateInitial;

  const factory CommercioDocsSentReceiptState.loading() =
      CommercioDocsSentReceiptStateLoading;

  const factory CommercioDocsSentReceiptState.error([String? error]) =
      CommercioDocsSentReceiptStateError;
}

@freezed
class CommercioDocsSentDocumentsState with _$CommercioDocsSentDocumentsState {
  const factory CommercioDocsSentDocumentsState({
    required List<CommercioDoc> sentDocuments,
  }) = CommercioDocsSentDocumentsStateData;

  const factory CommercioDocsSentDocumentsState.initial() =
      CommercioDocsSentDocumentsStateInitial;

  const factory CommercioDocsSentDocumentsState.loading() =
      CommercioDocsSentDocumentsStateLoading;

  const factory CommercioDocsSentDocumentsState.error([String? error]) =
      CommercioDocsSentDocumentsStateError;
}

@freezed
class CommercioDocsReceivedDocumentsState
    with _$CommercioDocsReceivedDocumentsState {
  const factory CommercioDocsReceivedDocumentsState({
    required List<CommercioDoc> receivedDocuments,
  }) = CommercioDocsReceivedDocumentsStateData;

  const factory CommercioDocsReceivedDocumentsState.initial() =
      CommercioDocsReceivedDocumentsStateInitial;

  const factory CommercioDocsReceivedDocumentsState.loading() =
      CommercioDocsReceivedDocumentsStateLoading;

  const factory CommercioDocsReceivedDocumentsState.error([String? error]) =
      CommercioDocsReceivedDocumentsStateError;
}

@freezed
class CommercioDocsSentReceiptsState with _$CommercioDocsSentReceiptsState {
  const factory CommercioDocsSentReceiptsState({
    required List<CommercioDocReceipt> sentReceipts,
  }) = CommercioDocsSentReceiptsStateData;

  const factory CommercioDocsSentReceiptsState.initial() =
      CommercioDocsSentReceiptsStateInitial;

  const factory CommercioDocsSentReceiptsState.loading() =
      CommercioDocsSentReceiptsStateLoading;

  const factory CommercioDocsSentReceiptsState.error([String? error]) =
      CommercioDocsSentReceiptsStateError;
}

@freezed
class CommercioDocsReceivedReceiptsState
    with _$CommercioDocsReceivedReceiptsState {
  const factory CommercioDocsReceivedReceiptsState({
    required List<CommercioDocReceipt> receivedReceipts,
  }) = CommercioDocsReceivedReceiptsStateData;

  const factory CommercioDocsReceivedReceiptsState.initial() =
      CommercioDocsReceivedReceiptsStateInitial;

  const factory CommercioDocsReceivedReceiptsState.loading() =
      CommercioDocsReceivedReceiptsStateLoading;

  const factory CommercioDocsReceivedReceiptsState.error([String? error]) =
      CommercioDocsReceivedReceiptsStateError;
}

@freezed
class CommercioDocsEncDataState with _$CommercioDocsEncDataState {
  const factory CommercioDocsEncDataState({
    required Map<CommercioEncryptedData, bool> encryptedData,
  }) = CommercioDocsEncDataStateData;

  const factory CommercioDocsEncDataState.initial({
    required Map<CommercioEncryptedData, bool> encryptedData,
  }) = CommercioDocsEncDataStateInitial;

  const factory CommercioDocsEncDataState.loading() =
      CommercioDocsEncDataStateLoading;

  const factory CommercioDocsEncDataState.error([String? error]) =
      CommercioDocsEncDataStateError;
}

@freezed
class CommercioDocsDeriveReceiptState with _$CommercioDocsDeriveReceiptState {
  const factory CommercioDocsDeriveReceiptState({
    required CommercioDocReceipt commercioDocReceipt,
  }) = CommercioDocsDeriveReceiptStateData;

  const factory CommercioDocsDeriveReceiptState.initial() =
      CommercioDocsDeriveReceiptStateInitial;

  const factory CommercioDocsDeriveReceiptState.loading() =
      CommercioDocsDeriveReceiptStateLoading;

  const factory CommercioDocsDeriveReceiptState.error([String? error]) =
      CommercioDocsDeriveReceiptStateError;
}
