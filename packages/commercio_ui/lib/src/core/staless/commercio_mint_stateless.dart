import 'package:commerciosdk/export.dart';
import 'package:commerciosdk/mint/export.dart';
import 'package:commercio_ui/commercio_ui.dart';

/// The [StatelessCommercioMint] module is the one that allows you to create
/// Collateralized Debt Positions (CDPs) using your Commercio.network tokens
/// (ucommercio) in order to get the half Commercio Cash Credits (uccc) in
/// return.
class StatelessCommercioMint {
  const StatelessCommercioMint();

  /// Creates a [MintCcc] from the given wallet [depositor], deposit amount
  /// [amount] and mint [id].
  MintCcc deriveMintCcc({
    required List<StdCoin> amount,
    required String id,
    required String depositor,
  }) {
    return MintCcc(depositAmount: amount, id: id, signerDid: depositor);
  }

  /// Mints the CCCs having the given [mintCccs] list as being
  /// associated with the address present inside the specified [wallet].
  /// Optionally [fee] and broadcasting [mode] parameters can be specified.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> mintCccsList({
    required List<MintCcc> mintCccs,
    required Wallet wallet,
    StdFee? fee,
    BroadcastingMode? mode,
  }) {
    return MintHelper.mintCccsList(mintCccs, wallet, fee: fee, mode: mode);
  }

  /// Returns a [BurnCcc] object from [walletAddress], [id] and [walletAddress].
  BurnCcc deriveBurnCcc({
    required StdCoin amount,
    required String id,
    required String walletAddress,
  }) {
    return BurnCcc(
      signerDid: walletAddress,
      amount: amount,
      id: id,
    );
  }

  /// Burns the CCCs having the given [burnCccs] list as being
  /// associated with the address present inside the specified [wallet].
  /// Optionally [fee] and broadcasting [mode] parameters can be specified.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> burnCccsList({
    required List<BurnCcc> burnCccs,
    required Wallet wallet,
    StdFee? fee,
    BroadcastingMode? mode,
  }) {
    return MintHelper.burnCccsList(burnCccs, wallet, fee: fee, mode: mode);
  }

  /// Returns the list of all the [ExchangeTradePosition] that the specified
  /// [walletAddress] has minted.
  Future<List<ExchangeTradePosition>> getExchangeTradePositions({
    required String walletAddress,
    HttpHelper? httpHelper,
  }) async {
    httpHelper ??= HttpHelper();

    final response = await httpHelper.getRequest(
      endpoint: HttpEndpoint.exchangedTradePositions,
      walletAddress: walletAddress,
    );

    if (response.statusCode != 200) {
      throw Exception('Not found');
    }

    return (response.body as List)
        .map((json) => ExchangeTradePosition.fromJson(json))
        .toList();
  }
}
