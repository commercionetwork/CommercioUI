part of 'commercio_docs_bloc.dart';

class CommercioDocsLoading extends CommercioDocsState
    implements CommercioLoading {
  const CommercioDocsLoading();

  @override
  List<Object> get props => [];
}

class CommercioDocsShareDocumentLoading extends CommercioDocsLoading {
  const CommercioDocsShareDocumentLoading();
}

class CommercioDocsShareEncryptedDocumentLoading extends CommercioDocsLoading {
  const CommercioDocsShareEncryptedDocumentLoading();
}

class CommercioDocsSendReceiptLoading extends CommercioDocsLoading {
  const CommercioDocsSendReceiptLoading();
}

class CommercioDocsSentDocumentsLoading extends CommercioDocsLoading {
  const CommercioDocsSentDocumentsLoading();
}

class CommercioDocsReceivedDocumentsLoading extends CommercioDocsLoading {
  const CommercioDocsReceivedDocumentsLoading();
}
