/// Exception thrown when there are no mnemonic avaiable.
class MnemonicNotStoredException implements Exception {
  static const String message = 'Mnemonic not found in secure storage.';

  const MnemonicNotStoredException();

  @override
  String toString() => message;
}
