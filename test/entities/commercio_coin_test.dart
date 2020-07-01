import 'package:commercio_ui/entities/commercio_coin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Constructor', () {
    test('Correct', () {
      final commercioCoin = CommercioCoin(amount: '10');

      expect(commercioCoin.amount, '10');
      expect(commercioCoin.denom, 'ucommercio');
      expect(commercioCoin.toString(), '{ amount: 10, denom: ucommercio }');
    });
  });
}
