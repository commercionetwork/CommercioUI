import 'package:commercio_ui/commercio_ui.dart';

class CommercioDocsError extends CommercioDocsState implements CommercioError {
  @override
  final String message;

  const CommercioDocsError(this.message);

  @override
  List<Object> get props => [message];
}

class CommercioDocsShareDocumentError extends CommercioDocsError {
  const CommercioDocsShareDocumentError(String message) : super(message);
}

class CommercioDocsShareEncryptedDocumentError extends CommercioDocsError {
  const CommercioDocsShareEncryptedDocumentError(String message)
      : super(message);
}

class CommercioDocsSendReceiptError extends CommercioDocsError {
  const CommercioDocsSendReceiptError(String message) : super(message);
}

class CommercioDocsSentDocumentsError extends CommercioDocsError {
  const CommercioDocsSentDocumentsError(String message) : super(message);
}

class CommercioDocsReceivedDocumentsError extends CommercioDocsError {
  const CommercioDocsReceivedDocumentsError(String message) : super(message);
}
