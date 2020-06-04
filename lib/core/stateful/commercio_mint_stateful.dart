import 'package:commercio_ui/core/staless/commercio_mint_stateless.dart';
import 'package:commercio_ui/core/stateful/commercio_account_stateful.dart';
import 'package:commercio_ui/entities/exceptions/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

class StatefulCommercioMint {
  final StatefulCommercioAccount commercioAccount;

  const StatefulCommercioMint({@required this.commercioAccount});

  Future<TransactionResult> openCdp({@required int amount, StdFee fee}) {
    if (amount < 0) {
      throw ArgumentError('amount must not be negative');
    }

    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioMint.openCdp(
        wallet: commercioAccount.wallet, amount: amount);
  }

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
