import 'package:commercio_ui/entities/exceptions/exceptions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('To string', () {
    final ex = DidDocumentNotFoundException();

    expect(ex.toString(), 'No Did document found. Try to generate one first.');
  });
}
