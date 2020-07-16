import 'package:commerciosdk/export.dart';
import 'package:commerciosdk/mint/export.dart';
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

  /// Returns a [CloseCdp] object that indicates the closing of a DCP at
  /// [blockHeight] assciated with the address inside [wallet].
  static CloseCdp deriveCloseCdp({
    @required int blockHeight,
    @required Wallet wallet,
  }) {
    return CloseCdpHelper.fromWallet(wallet, blockHeight);
  }

  /// Closes the open CDPs from the list [closeCdps] with the associated
  /// [wallet] with optional [fee].
  ///
  /// Returns the [TransactionResult].
  static Future<TransactionResult> closeCdps({
    @required List<CloseCdp> closeCdps,
    @required Wallet wallet,
    StdFee fee,
  }) {
    return MintHelper.closeCdpsList(closeCdps, wallet, fee: fee);
  }
}
