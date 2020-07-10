import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/docs/export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class CommercioDocsShareDocumentBloc extends Bloc<
    CommercioDocsShareDocumentEvent, CommercioDocsSharedDocumentState> {
  final StatefulCommercioDocs commercioDocs;
  final StatefulCommercioId commercioId;

  CommercioDocsShareDocumentBloc({
    @required this.commercioDocs,
    @required this.commercioId,
  }) : super(const CommercioDocsSharedDocumentStateInitial());

  @override
  Stream<CommercioDocsSharedDocumentState> mapEventToState(
    CommercioDocsShareDocumentEvent event,
  ) async* {
    try {
      yield const CommercioDocsSharedDocumentStateLoading();

      final txResult = await commercioDocs.shareDocument(
        metadata: event.metadata,
        recipients: event.recipients,
        docId: event.docId,
        doSign: event.doSign,
        checksum: event.checksum,
        contentUri: event.contentUri,
        fee: event.fee,
      );

      yield CommercioDocsSharedDocumentStateData(result: txResult);
    } catch (e) {
      yield CommercioDocsSharedDocumentStateError(e.toString());
    }
  }
}

class CommercioDocsShareEncryptedDocumentBloc extends Bloc<
    CommercioDocsShareEncryptedDocumentEvent,
    CommercioDocsSharedEncryptedDocumentState> {
  final StatefulCommercioDocs commercioDocs;
  final StatefulCommercioId commercioId;

  CommercioDocsShareEncryptedDocumentBloc({
    @required this.commercioDocs,
    @required this.commercioId,
  }) : super(const CommercioDocsSharedEncryptedDocumentStateInitial());

  @override
  Stream<CommercioDocsSharedEncryptedDocumentState> mapEventToState(
    CommercioDocsShareEncryptedDocumentEvent event,
  ) async* {
    try {
      yield const CommercioDocsSharedEncryptedDocumentStateLoading();

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

      yield CommercioDocsSharedEncryptedDocumentStateData(result: txResult);
    } catch (e) {
      yield CommercioDocsSharedEncryptedDocumentStateError(e.toString());
    }
  }
}

class CommercioDocsSendReceiptBloc
    extends Bloc<CommercioDocsSendReceiptEvent, CommercioDocsSentReceiptState> {
  final StatefulCommercioDocs commercioDocs;
  final StatefulCommercioId commercioId;

  CommercioDocsSendReceiptBloc({
    @required this.commercioDocs,
    @required this.commercioId,
  }) : super(const CommercioDocsSentReceiptStateInitial());

  @override
  Stream<CommercioDocsSentReceiptState> mapEventToState(
    CommercioDocsSendReceiptEvent event,
  ) async* {
    try {
      yield const CommercioDocsSentReceiptStateLoading();

      final txResult = await commercioDocs.sendReceipt(
        recipient: event.recipient,
        txHash: event.txHash,
        docId: event.docId,
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
