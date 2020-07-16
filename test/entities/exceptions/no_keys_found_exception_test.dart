import 'package:commercio_ui/entities/exceptions/no_keys_found_exception.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('To string', () {
    final ex = NoKeysFoundException();

    expect(
      ex.toString(),
      'No keys associated to the account. Have you generated or restored them?',
    );
  });
}
