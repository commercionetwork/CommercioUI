import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

/// The [StatelessCommercioMint] module is the one that allows you to create
/// Collateralized Debt Positions (CDPs) using your Commercio.network tokens
/// (ucommercio) in order to get the half Commercio Cash Credits (uccc) in
/// return.
abstract class StatelessCommercioMint {
  /// Open a new CDP for the [wallet] with the [amount] of ucommercio to
  /// get in returns the half of the [amount] in uccc.
  /// An optional [fee] can specified.
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> openCdp({
    @required Wallet wallet,
    @required int amount,
    StdFee fee,
  }) {
    return MintHelper.openCdp(amount, wallet, fee: fee);
  }

  /// Close a previously opened CDP at [blockHeight] from the [wallet] with
  /// optional [fee].
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> closeCdp({
    @required Wallet wallet,
    @required int blockHeight,
    StdFee fee,
  }) {
    return MintHelper.closeCdp(blockHeight, wallet, fee: fee);
  }
}
