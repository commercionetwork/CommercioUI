import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/docs/export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommercioDocsDeriveDocumentBloc extends Bloc<
    CommercioDocsDeriveDocumentEvent, CommercioDocsDeriveDocumentState> {
  final StatefulCommercioDocs commercioDocs;
  final StatefulCommercioId commercioId;

  CommercioDocsDeriveDocumentBloc({
    @required this.commercioDocs,
    @required this.commercioId,
  }) : super(const CommercioDocsDeriveDocumentStateInitial());

  @override
  Stream<CommercioDocsDeriveDocumentState> mapEventToState(
    CommercioDocsDeriveDocumentEvent event,
  ) async* {
    try {
      yield const CommercioDocsDeriveDocumentStateLoading();

      final commercioDoc = await commercioDocs.deriveCommercioDocument(
        metadata: event.metadata,
        recipients: event.recipients,
        aesKey: event.aesKey,
        encryptedData: event.encryptedData,
        docId: event.docId,
        doSign: event.doSign,
        checksum: event.checksum,
        contentUri: event.contentUri,
      );

      yield CommercioDocsDeriveDocumentStateData(commercioDoc: commercioDoc);
    } catch (e) {
      yield CommercioDocsDeriveDocumentStateError(e.toString());
    }
  }
}

class CommercioDocsShareDocumentsBloc extends Bloc<
    CommercioDocsShareDocumentsEvent, CommercioDocsSharedDocumentsState> {
  final StatefulCommercioDocs commercioDocs;
  final StatefulCommercioId commercioId;

  CommercioDocsShareDocumentsBloc({
    @required this.commercioDocs,
    @required this.commercioId,
  }) : super(const CommercioDocsSharedDocumentsStateInitial());

  @override
  Stream<CommercioDocsSharedDocumentsState> mapEventToState(
    CommercioDocsShareDocumentsEvent event,
  ) async* {
    try {
      yield const CommercioDocsSharedDocumentsStateLoading();

      final txResult = await commercioDocs.shareDocuments(
        commercioDocs: event.commercioDocs,
        fee: event.fee,
        mode: event.mode,
      );

      yield CommercioDocsSharedDocumentsStateData(result: txResult);
    } catch (e) {
      yield CommercioDocsSharedDocumentsStateError(e.toString());
    }
  }
}

class CommercioDocsDeriveReceiptBloc extends Bloc<
    CommercioDocsDeriveReceiptEvent, CommercioDocsDeriveReceiptState> {
  final StatefulCommercioDocs commercioDocs;
  final StatefulCommercioId commercioId;

  CommercioDocsDeriveReceiptBloc({
    @required this.commercioDocs,
    @required this.commercioId,
  }) : super(const CommercioDocsDeriveReceiptStateInitial());

  @override
  Stream<CommercioDocsDeriveReceiptState> mapEventToState(
    CommercioDocsDeriveReceiptEvent event,
  ) async* {
    try {
      yield const CommercioDocsDeriveReceiptStateLoading();

      final receipt = commercioDocs.deriveReceipt(
        recipient: event.recipient,
        txHash: event.txHash,
        documentId: event.documentId,
        proof: event.proof,
      );

      yield CommercioDocsDeriveReceiptStateData(commercioDocReceipt: receipt);
    } catch (e) {
      yield CommercioDocsDeriveReceiptStateError(e.toString());
    }
  }
}

class CommercioDocsSendReceiptsBloc extends Bloc<CommercioDocsSendReceiptsEvent,
    CommercioDocsSentReceiptState> {
  final StatefulCommercioDocs commercioDocs;
  final StatefulCommercioId commercioId;

  CommercioDocsSendReceiptsBloc({
    @required this.commercioDocs,
    @required this.commercioId,
  }) : super(const CommercioDocsSentReceiptStateInitial());

  @override
  Stream<CommercioDocsSentReceiptState> mapEventToState(
    CommercioDocsSendReceiptsEvent event,
  ) async* {
    try {
      yield const CommercioDocsSentReceiptStateLoading();

      final txResult = await commercioDocs.sendReceipts(
        commercioDocReceipts: event.commercioDocReceipts,
        fee: event.fee,
        mode: event.mode,
      );

      yield CommercioDocsSentReceiptStateData(result: txResult);
    } catch (e) {
      yield CommercioDocsSentReceiptStateError(e.toString());
    }
  }
}

class CommercioDocsSentDocumentsBloc extends Bloc<
    CommercioDocsSentDocumentsEvent, CommercioDocsSentDocumentsState> {
  final StatefulCommercioDocs commercioDocs;
  final StatefulCommercioId commercioId;

  CommercioDocsSentDocumentsBloc({
    @required this.commercioDocs,
    @required this.commercioId,
  }) : super(const CommercioDocsSentDocumentsStateInitial());

  @override
  Stream<CommercioDocsSentDocumentsState> mapEventToState(
    CommercioDocsSentDocumentsEvent event,
  ) async* {
    try {
      yield const CommercioDocsSentDocumentsStateLoading();

      final sentDocuments = await commercioDocs.sentDocuments(
        walletAddress: event.walletAddress,
      );

      yield CommercioDocsSentDocumentsStateData(sentDocuments: sentDocuments);
    } catch (e) {
      yield CommercioDocsSentDocumentsStateError(e.toString());
    }
  }
}

class CommercioDocsReceivedDocumentsBloc extends Bloc<
    CommercioDocsReceivedDocumentsEvent, CommercioDocsReceivedDocumentsState> {
  final StatefulCommercioDocs commercioDocs;
  final StatefulCommercioId commercioId;

  CommercioDocsReceivedDocumentsBloc({
    @required this.commercioDocs,
    @required this.commercioId,
  }) : super(const CommercioDocsReceivedDocumentsStateInitial());

  @override
  Stream<CommercioDocsReceivedDocumentsState> mapEventToState(
    CommercioDocsReceivedDocumentsEvent event,
  ) async* {
    try {
      yield const CommercioDocsReceivedDocumentsStateLoading();

      final receivedDocuments = await commercioDocs.receivedDocuments(
        walletAddress: event.walletAddress,
      );

      yield CommercioDocsReceivedDocumentsStateData(
        receivedDocuments: receivedDocuments,
      );
    } catch (e) {
      yield CommercioDocsReceivedDocumentsStateError(e.toString());
    }
  }
}

class CommercioDocsSentReceiptsBloc extends Bloc<CommercioDocsSentReceiptsEvent,
    CommercioDocsSentReceiptsState> {
  final StatefulCommercioDocs commercioDocs;
  final StatefulCommercioId commercioId;

  CommercioDocsSentReceiptsBloc({
    @required this.commercioDocs,
    @required this.commercioId,
  }) : super(const CommercioDocsSentReceiptsStateInitial());

  @override
  Stream<CommercioDocsSentReceiptsState> mapEventToState(
    CommercioDocsSentReceiptsEvent event,
  ) async* {
    try {
      yield const CommercioDocsSentReceiptsStateLoading();

      final sentReceipts = await commercioDocs.sentReceipts(
        walletAddress: event.walletAddress,
      );

      yield CommercioDocsSentReceiptsStateData(sentReceipts: sentReceipts);
    } catch (e) {
      yield CommercioDocsSentReceiptsStateError(e.toString());
    }
  }
}

class CommercioDocsReceivedReceiptsBloc extends Bloc<
    CommercioDocsReceivedReceiptsEvent, CommercioDocsReceivedReceiptsState> {
  final StatefulCommercioDocs commercioDocs;
  final StatefulCommercioId commercioId;

  CommercioDocsReceivedReceiptsBloc({
    @required this.commercioDocs,
    @required this.commercioId,
  }) : super(const CommercioDocsReceivedReceiptsStateInitial());

  @override
  Stream<CommercioDocsReceivedReceiptsState> mapEventToState(
    CommercioDocsReceivedReceiptsEvent event,
  ) async* {
    try {
      yield const CommercioDocsReceivedReceiptsStateLoading();

      final receivedReceipts = await commercioDocs.receivedReceipts(
        walletAddress: event.walletAddress,
      );

      yield CommercioDocsReceivedReceiptsStateData(
        receivedReceipts: receivedReceipts,
      );
    } catch (e) {
      yield CommercioDocsReceivedReceiptsStateError(e.toString());
    }
  }
}

/// Handle changes in a list of [EncryptedData] fields. Every field has a
/// [bool] value that indicates if the [EncryptedData] should be encrypted
/// in a [CommercioDocsShareEncryptedDocumentEvent].
class CommercioDocsEncDataBloc
    extends Bloc<CommercioDocsEncDataEvent, CommercioDocsEncDataState> {
  final Map<EncryptedData, bool> encryptedData = {
    EncryptedData.CONTENT_URI: false,
    EncryptedData.METADATA_CONTENT_URI: false,
    EncryptedData.METADATA_SCHEMA_URI: false,
  };

  CommercioDocsEncDataBloc()
      : super(CommercioDocsEncDataStateInitial(encryptedData: {
          EncryptedData.CONTENT_URI: false,
          EncryptedData.METADATA_CONTENT_URI: false,
          EncryptedData.METADATA_SCHEMA_URI: false,
        }));

  /// Returns a list with the [EncryptedData] that have a [true] value,
  /// that is, chosen be the user to be encrypted.
  /// Commonly used as parameter for
  /// [CommercioDocsShareEncryptedDocumentEvent].
  List<EncryptedData> get encryptedDataList => encryptedData.entries
      .where((element) => element.value)
      .map((e) => e.key)
      .toList();

  @override
  Stream<CommercioDocsEncDataState> mapEventToState(
    CommercioDocsEncDataEvent event,
  ) async* {
    if (event is CommercioDocsChangeEncryptedData) {
      yield const CommercioDocsEncDataStateLoading();

      encryptedData[event.encryptedDataKey] = event.newValue;
      final newEncryptedData = Map<EncryptedData, bool>.from(encryptedData);

      yield CommercioDocsEncDataStateData(encryptedData: newEncryptedData);
    }
  }
}
