import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/docs/export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class CommercioDocsBloc extends Bloc<CommercioDocsEvent, CommercioDocsState> {
  final StatefulCommercioDocs commercioDocs;
  final StatefulCommercioId commercioId;

  CommercioDocsBloc({
    @required StatefulCommercioAccount commercioAccount,
  })  : commercioId = StatefulCommercioId(commercioAccount: commercioAccount),
        commercioDocs =
            StatefulCommercioDocs(commercioAccount: commercioAccount);

  @override
  CommercioDocsState get initialState => const CommercioDocsInitial();

  @override
  Stream<CommercioDocsState> mapEventToState(
    CommercioDocsEvent event,
  ) async* {
    if (event is CommercioDocsShareDocumentEvent) {
      try {
        yield const CommercioDocsShareDocumentLoading();

        final txResult = await commercioDocs.shareDocument(
          metadata: event.metadata,
          recipients: event.recipients,
          docId: event.docId,
          doSign: event.doSign,
          checksum: event.checksum,
          contentUri: event.contentUri,
          fee: event.fee,
        );

        yield CommercioDocsSharedDocument(
            commercioDocs: commercioDocs, transactionResult: txResult);
      } catch (e) {
        yield CommercioDocsShareDocumentError(e.toString());
      }
    }

    if (event is CommercioDocsShareEncryptedDocumentEvent) {
      try {
        yield const CommercioDocsShareEncryptedDocumentLoading();

        final txResult = await commercioDocs.shareEncryptedDocument(
          metadata: event.metadata,
          recipients: event.recipients,
          aesKey: event.aesKey,
          encryptedData: event.encryptedData,
          docId: event.docId,
          doSign: event.doSign,
          checksum: event.checksum,
          contentUri: event.contentUri,
          fee: event.fee,
        );

        yield CommercioDocsSharedEncryptedDocument(
            commercioDocs: commercioDocs, transactionResult: txResult);
      } catch (e) {
        yield CommercioDocsShareEncryptedDocumentError(e.toString());
      }
    }

    if (event is CommercioDocsSendReceiptEvent) {
      try {
        yield const CommercioDocsSendReceiptLoading();

        final txResult = await commercioDocs.sendReceipt(
            recipient: event.recipient,
            txHash: event.txHash,
            docId: event.docId);

        yield CommercioDocsSentReceipt(
            commercioDocs: commercioDocs, transactionResult: txResult);
      } catch (e) {
        yield CommercioDocsSendReceiptError(e.toString());
      }
    }

    if (event is CommercioDocsSentDocumentsEvent) {
      try {
        yield const CommercioDocsSentDocumentsLoading();

        final sentDocuments = await commercioDocs.sentDocuments();

        yield CommercioDocsSentDocuments(
            commercioDocs: commercioDocs, sentDocuments: sentDocuments);
      } catch (e) {
        yield CommercioDocsSentDocumentsError(e.toString());
      }
    }

    if (event is CommercioDocsReceivedDocumentsEvent) {
      try {
        yield const CommercioDocsReceivedDocumentsLoading();

        final receivedDocuments = await commercioDocs.receivedDocuments();

        yield CommercioDocsReceivedDocuments(
            commercioDocs: commercioDocs, receivedDocuments: receivedDocuments);
      } catch (e) {
        yield CommercioDocsReceivedDocumentsError(e.toString());
      }
    }

    if (event is CommercioDocsSentReceiptsEvent) {
      try {
        yield const CommercioDocsSentReceiptsLoading();

        final sentReceipts = await commercioDocs.sentReceipts();

        yield CommercioDocsSentReceipts(
            commercioDocs: commercioDocs, sentReceipts: sentReceipts);
      } catch (e) {
        yield CommercioDocsSentReceiptsError(e.toString());
      }
    }

    if (event is CommercioDocsReceivedReceiptsEvent) {
      try {
        yield const CommercioDocsReceivedReceiptsLoading();

        final receivedReceipts = await commercioDocs.receivedReceipts();

        yield CommercioDocsReceivedReceipts(
            commercioDocs: commercioDocs, receivedReceipts: receivedReceipts);
      } catch (e) {
        yield CommercioDocsReceivedReceiptsError(e.toString());
      }
    }
  }
}

/// Handle changes in a list of [EncryptedData] fields. Every field has a
/// [bool] value that indicates if the [EncryptedData] should be encrypted
/// in a [CommercioDocsShareEncryptedDocumentEvent].
class CommercioDocsEncDataBloc
    extends Bloc<CommercioDocsEncDataEvent, CommercioDocsEncDataState> {
  final Map<EncryptedData, bool> encryptedData;

  CommercioDocsEncDataBloc({
    Map<EncryptedData, bool> encryptedData,
  }) : encryptedData =
            encryptedData ?? {for (var k in EncryptedData.values) k: false};

  /// Returns a list with the [EncryptedData] that have a [true] value,
  /// that is, chosen be the user to be encrypted.
  /// Commonly used as parameter for
  /// [CommercioDocsShareEncryptedDocumentEvent].
  List<EncryptedData> get encryptedDataList => encryptedData.entries
      .where((element) => element.value)
      .map((e) => e.key)
      .toList();

  @override
  CommercioDocsEncDataState get initialState => CommercioDocsEncDataInitial(
        encryptedData: encryptedData,
      );

  @override
  Stream<CommercioDocsEncDataState> mapEventToState(
    CommercioDocsEncDataEvent event,
  ) async* {
    if (event is CommercioDocsChangeEncryptedData) {
      encryptedData[event.encryptedDataKey] = event.newValue;
      final newEncryptedData = Map<EncryptedData, bool>.from(encryptedData);

      yield CommercioDocsEncDataChanged(encryptedData: newEncryptedData);
    }
  }
}
