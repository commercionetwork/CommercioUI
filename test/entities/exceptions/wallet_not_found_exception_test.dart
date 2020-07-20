import 'package:commercio_ui/src/entities/exceptions/wallet_not_found_exception.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('To string', () {
    final ex = WalletNotFoundException();

    expect(
      ex.toString(),
      'No active wallet found. Have you tried to generate one or restoring it?',
    );
  });
}
