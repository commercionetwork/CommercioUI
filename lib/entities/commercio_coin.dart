import 'package:meta/meta.dart';
import 'package:sacco/models/export.dart';

class CommercioCoin extends StdCoin {
  const CommercioCoin({@required String amount})
      : super(denom: 'ucommercio', amount: amount);

  @override
  String toString() => '{ amount: $amount, denom: $denom }';
}
