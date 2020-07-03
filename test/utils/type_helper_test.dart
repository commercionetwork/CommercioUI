import 'package:commercio_ui/core/utils/type_helper.dart';
import 'package:flutter_test/flutter_test.dart';

class A {}

class AB {}

class BA {}

class AA {}

class _$A {}

class B {}

void main() {
  group('Type helper', () {
    test('Correct', () {
      expect(TypeHelper.hasType(A, A), isTrue);
      expect(TypeHelper.hasType(A, B), isFalse);
    });

    test('Type should have strict equal name for the class', () {
      expect(TypeHelper.hasType(A, AA), isFalse);
      expect(TypeHelper.hasType(A, AB), isFalse);
      expect(TypeHelper.hasType(A, BA), isFalse);
    });

    test('Accepts object types starting with "_dollar"', () {
      expect(TypeHelper.hasType(_$A, A), isTrue);
      expect(TypeHelper.hasType(_$A, B), isFalse);
    });
  });
}
