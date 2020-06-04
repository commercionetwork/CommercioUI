class NoKeysFoundException implements Exception {
  static const String message =
      'No keys associated to the account. Have you generated or restored them?';

  const NoKeysFoundException();

  @override
  String toString() => message;
}
