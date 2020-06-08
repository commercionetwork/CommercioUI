import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

class StatefulCommercioMint {
  final StatefulCommercioAccount commercioAccount;

  /// Creates a new [StatefulCommercioMint] with the given [commercioAccount].
  const StatefulCommercioMint({@required this.commercioAccount});

  /// Open a new CDP with the [amount] of ucommercio to get in returns the
  /// half of the [amount] in uccc. An optional [fee] can specified.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> openCdp({
    @required int amount,
    StdFee fee,
  }) {
    if (amount < 0) {
      throw ArgumentError('amount must not be negative');
    }

    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioMint.openCdp(
        wallet: commercioAccount.wallet, amount: amount, fee: fee);
  }

  /// Close a previously opened CDP at [blockHeight] with optional [fee].
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> closeCdp({@required int blockHeight, StdFee fee}) {
    if (blockHeight < 0) {
      throw ArgumentError('blockHeight must not be negative');
    }

    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioMint.closeCdp(
        wallet: commercioAccount.wallet, blockHeight: blockHeight);
  }
}
