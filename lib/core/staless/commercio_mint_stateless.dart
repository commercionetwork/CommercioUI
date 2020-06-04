import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

class StatelessCommercioMint {
  const StatelessCommercioMint();

  static Future<TransactionResult> openCdp({
    @required Wallet wallet,
    @required int amount,
    StdFee fee,
  }) {
    return MintHelper.openCdp(amount, wallet, fee: fee);
  }

  static Future<TransactionResult> closeCdp({
    @required Wallet wallet,
    @required int blockHeight,
    StdFee fee,
  }) {
    return MintHelper.closeCdp(blockHeight, wallet, fee: fee);
  }
}
