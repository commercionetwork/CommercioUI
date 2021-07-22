import 'package:commerciosdk/export.dart';

import '../../entities/entities.dart';
import '../core.dart';
import '../staless/stateless.dart';

/// The [StatefulCommercioMint] module is the one that allows you to create
/// Collateralized Debt Positions (CDPs) using your Commercio.network tokens
/// (ucommercio) in order to get the half Commercio Cash Credits (uccc) in
/// return.
class StatefulCommercioMint {
  final StatefulCommercioAccount commercioAccount;
  final StatelessCommercioMint statelessHandler;

  /// Creates a new [StatefulCommercioMint] with the given [commercioAccount].
  const StatefulCommercioMint({
    required this.commercioAccount,
    this.statelessHandler = const StatelessCommercioMint(),
  });

  /// Open a new CDP with the [amount] of ucommercio to get in returns the
  /// half of the [amount] in uccc. An optional [fee] and [mode] can specified.
  ///
  /// Returns the [TransactionResult].
  MintCcc deriveMintCcc({
    required List<StdCoin> amount,
    required String id,
    String? depositor,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return statelessHandler.deriveMintCcc(
      depositor: depositor ?? commercioAccount.walletAddress!,
      amount: amount,
      id: id,
    );
  }

  /// Mints the CCCs having the given [mintCccs] list as being
  /// associated with the address present inside the user wallet.
  /// Optionally [fee] and broadcasting [mode] parameters can be specified.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> mintCccsList({
    required List<MintCcc> mintCccs,
    StdFee? fee,
    BroadcastingMode? mode,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return MintHelper.mintCccsList(
      mintCccs,
      commercioAccount.wallet!,
      fee: fee,
      mode: mode,
    );
  }

  /// Returns a [BurnCcc] object from [walletAddress], [id] and [walletAddress].
  ///
  /// Throw [WalletNotFoundException] if no wallet is found.
  BurnCcc deriveBurnCcc({
    required StdCoin amount,
    required String id,
    String? walletAddress,
  }) {
    if (walletAddress == null && !commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    walletAddress ??= commercioAccount.walletAddress;

    return statelessHandler.deriveBurnCcc(
      amount: amount,
      id: id,
      walletAddress: walletAddress!,
    );
  }

  /// Closes the open CDPs from the list [closeCdps] with the associated
  /// [wallet] with optional [fee] and [mode].
  ///
  /// Throw [WalletNotFoundException] if no wallet is found.
  /// Throw [ArgumentError] if [blockHeight] is less than zero.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> burnCccsList({
    required List<BurnCcc> burnCccs,
    StdFee? fee,
    BroadcastingMode? mode,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return statelessHandler.burnCccsList(
      burnCccs: burnCccs,
      wallet: commercioAccount.wallet!,
      fee: fee,
      mode: mode,
    );
  }

  Future<List<ExchangeTradePosition>> getExchangeTradePositions({
    String? walletAddress,
  }) async {
    if (walletAddress == null && !commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    walletAddress ??= commercioAccount.walletAddress;

    return statelessHandler.getExchangeTradePositions(
      walletAddress: walletAddress!,
      httpHelper: commercioAccount.httpHelper,
    );
  }
}
