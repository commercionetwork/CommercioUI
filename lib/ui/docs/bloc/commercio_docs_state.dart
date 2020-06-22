import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

abstract class CommercioDocsState extends CommercioState {
  const CommercioDocsState();
}

class CommercioDocsInitial extends CommercioDocsState {
  const CommercioDocsInitial();

  @override
  List<Object> get props => [];
}

class CommercioDocsSharedDocument extends CommercioDocsState {
  final StatefulCommercioDocs commercioDocs;
  final TransactionResult transactionResult;

  const CommercioDocsSharedDocument({
    @required this.commercioDocs,
    @required this.transactionResult,
  });

  @override
  List<Object> get props => [commercioDocs, transactionResult];
}

class CommercioDocsSharedEncryptedDocument extends CommercioDocsState {
  final StatefulCommercioDocs commercioDocs;
  final TransactionResult transactionResult;

  const CommercioDocsSharedEncryptedDocument({
    @required this.commercioDocs,
    @required this.transactionResult,
  });

  @override
  List<Object> get props => [commercioDocs, transactionResult];
}

class CommercioDocsSentReceipt extends CommercioDocsState {
  final StatefulCommercioDocs commercioDocs;
  final TransactionResult transactionResult;

  const CommercioDocsSentReceipt({
    @required this.commercioDocs,
    @required this.transactionResult,
  });

  @override
  List<Object> get props => [commercioDocs, transactionResult];
}

class CommercioDocsSentDocuments extends CommercioDocsState {
  final StatefulCommercioDocs commercioDocs;
  final List<CommercioDoc> sentDocuments;

  const CommercioDocsSentDocuments({
    @required this.commercioDocs,
    @required this.sentDocuments,
  });

  @override
  List<Object> get props => [commercioDocs, sentDocuments];
}

class CommercioDocsReceivedDocuments extends CommercioDocsState {
  final StatefulCommercioDocs commercioDocs;
  final List<CommercioDoc> receivedDocuments;

  const CommercioDocsReceivedDocuments({
    @required this.commercioDocs,
    @required this.receivedDocuments,
  });

  @override
  List<Object> get props => [commercioDocs, receivedDocuments];
}

class CommercioDocsSentReceipts extends CommercioDocsState {
  final StatefulCommercioDocs commercioDocs;
  final List<CommercioDocReceipt> sentReceipts;

  const CommercioDocsSentReceipts({
    @required this.commercioDocs,
    @required this.sentReceipts,
  });

  @override
  List<Object> get props => [commercioDocs, sentReceipts];
}

class CommercioDocsReceivedReceipts extends CommercioDocsState {
  final StatefulCommercioDocs commercioDocs;
  final List<CommercioDocReceipt> receivedReceipts;

  const CommercioDocsReceivedReceipts({
    @required this.commercioDocs,
    @required this.receivedReceipts,
  });

  @override
  List<Object> get props => [commercioDocs, receivedReceipts];
}

abstract class CommercioDocsEncDataState extends CommercioState {
  final Map<EncryptedData, bool> encryptedData;

  const CommercioDocsEncDataState({@required this.encryptedData});

  @override
  List<Object> get props => [encryptedData];
}

class CommercioDocsEncDataInitial extends CommercioDocsEncDataState {
  const CommercioDocsEncDataInitial({
    @required Map<EncryptedData, bool> encryptedData,
  }) : super(encryptedData: encryptedData);
}

class CommercioDocsEncDataChanged extends CommercioDocsEncDataState {
  const CommercioDocsEncDataChanged({
    @required Map<EncryptedData, bool> encryptedData,
  }) : super(encryptedData: encryptedData);
}
