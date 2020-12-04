import 'package:commercio_ui/src/entities/exceptions/mnemonic_not_stored_exception.dart';
import 'package:test/test.dart';

void main() {
  test('To string', () {
    final ex = MnemonicNotStoredException();

    expect(ex.toString(), 'Mnemonic not found in secure storage.');
  });
}
