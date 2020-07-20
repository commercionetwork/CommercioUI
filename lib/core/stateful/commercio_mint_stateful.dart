import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/foundation.dart';

/// The [StatefulCommercioMint] module is the one that allows you to create
/// Collateralized Debt Positions (CDPs) using your Commercio.network tokens
/// (ucommercio) in order to get the half Commercio Cash Credits (uccc) in
/// return.
class StatefulCommercioMint {
  final StatefulCommercioAccount commercioAccount;
  final StatelessCommercioMint statelessHandler;

  /// Creates a new [StatefulCommercioMint] with the given [commercioAccount].
  const StatefulCommercioMint({
    @required this.commercioAccount,
    this.statelessHandler = const StatelessCommercioMint(),
  });

  /// Open a new CDP with the [amount] of ucommercio to get in returns the
  /// half of the [amount] in uccc. An optional [fee] and [mode] can specified.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> openCdp({
    @required int amount,
    StdFee fee,
    BroadcastingMode mode,
  }) {
    if (amount < 0) {
      throw ArgumentError('The amount must not be negative');
    }

    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return statelessHandler.openCdp(
      wallet: commercioAccount.wallet,
      amount: amount,
      fee: fee,
      mode: mode,
    );
  }

  /// Returns a [CloseCdp] object that indicates the closing of a DCP at
  /// [blockHeight] assciated with the address inside [wallet].
  ///
  /// Throw [WalletNotFoundException] if no wallet is found.
  CloseCdp deriveCloseCdp({
    @required int blockHeight,
  }) {
    if (blockHeight < 0) {
      throw ArgumentError('blockHeight must not be negative');
    }

    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return statelessHandler.deriveCloseCdp(
      blockHeight: blockHeight,
      wallet: commercioAccount.wallet,
    );
  }

  /// Closes the open CDPs from the list [closeCdps] with the associated
  /// [wallet] with optional [fee] and [mode].
  ///
  /// Throw [WalletNotFoundException] if no wallet is found.
  /// Throw [ArgumentError] if [blockHeight] is less than zero.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> closeCdps({
    @required List<CloseCdp> closeCdps,
    StdFee fee,
    BroadcastingMode mode,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return statelessHandler.closeCdps(
      closeCdps: closeCdps,
      wallet: commercioAccount.wallet,
      fee: fee,
      mode: mode,
    );
  }
}
