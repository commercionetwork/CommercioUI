import 'package:commercio_ui/entities/exceptions/mnemonic_not_stored_exception.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('To string', () {
    final ex = MnemonicNotStoredException();

    expect(ex.toString(), 'Mnemonic not found in secure storage.');
  });
}
