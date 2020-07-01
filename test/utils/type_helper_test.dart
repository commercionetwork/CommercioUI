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
    final a = A();

    test('Correct', () {
      expect(TypeHelper.hasType(a, A), isTrue);
      expect(TypeHelper.hasType(a, B), isFalse);
    });

    test('Type should have strict equal name for the class', () {
      expect(TypeHelper.hasType(a, AA), isFalse);
      expect(TypeHelper.hasType(a, AB), isFalse);
      expect(TypeHelper.hasType(a, BA), isFalse);
    });

    test('Accepts object types starting with "_dollar"', () {
      final a = _$A();

      expect(TypeHelper.hasType(a, A), isTrue);
      expect(TypeHelper.hasType(a, B), isFalse);
    });
  });
}
