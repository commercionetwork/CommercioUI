import 'package:commercio_ui/src/entities/exceptions/exceptions.dart';
import 'package:test/test.dart';

void main() {
  test('To string', () {
    final ex = DidDocumentNotFoundException();

    expect(ex.toString(), 'No Did document found. Try to generate one first.');
  });
}
