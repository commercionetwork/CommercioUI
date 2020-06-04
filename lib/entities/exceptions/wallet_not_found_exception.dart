class WalletNotFoundException implements Exception {
  static const String message =
      'No active wallet found. Have you tried to generate one or restoring it?';

  const WalletNotFoundException();

  @override
  String toString() => message;
}
