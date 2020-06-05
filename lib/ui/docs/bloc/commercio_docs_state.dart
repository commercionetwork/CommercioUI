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
