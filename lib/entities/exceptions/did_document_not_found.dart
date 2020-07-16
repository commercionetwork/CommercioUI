/// Exception thrown when there is not a [DidDocument] avaiable.
class DidDocumentNotFoundException implements Exception {
  static const String message =
      'No Did document found. Try to generate one first.';

  const DidDocumentNotFoundException();

  @override
  String toString() => message;
}
