import 'package:commercio_ui/src/entities/commercio_coin.dart';
import 'package:test/test.dart';

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
