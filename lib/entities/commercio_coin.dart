import 'package:flutter/foundation.dart';
import 'package:sacco/models/export.dart';

/// Represents a 'ucommercio' coin
class CommercioCoin extends StdCoin {
  const CommercioCoin({@required String amount})
      : super(denom: 'ucommercio', amount: amount);

  @override
  String toString() => '{ amount: $amount, denom: $denom }';
}
