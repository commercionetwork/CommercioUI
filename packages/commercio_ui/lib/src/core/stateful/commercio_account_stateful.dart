import 'package:commerciosdk/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sacco/sacco.dart';

import '../../data/secret_storage.dart';
import '../../entities/entities.dart';
import '../staless/stateless.dart';
import '../utils/utils.dart';

/// The [StatefulCommercioAccount] module allows to generate mnemonics, derive
/// wallets, send and request tokens.
class StatefulCommercioAccount {
  final String secureStorageKey;
  final ISecretStorage storage;
  final StatelessCommercioAccount statelessHandler;
  NetworkInfo _networkInfo;
  HttpHelper httpHelper;
  WalletWithAddress walletWithAddress;

  /// Creates a [StatefulCommercioAccount] with the optional [storageKey],
  /// [storage] and [networkInfo].
  StatefulCommercioAccount({
    @required this.storage,
    this.statelessHandler = const StatelessCommercioAccount(),
    HttpHelper httpHelper,
    NetworkInfo networkInfo,
    String storageKey,
  })  : assert(storage != null),
        secureStorageKey = storageKey ?? 'commercio-account-mnemonic',
        _networkInfo = networkInfo ??
            NetworkInfo(
              bech32Hrp: 'did:com:',
              lcdUrl: 'http://localhost:1317',
            ),
        httpHelper = httpHelper ?? HttpHelper();

  /// Returns the [Wallet] of this account.
  Wallet get wallet => walletWithAddress?.wallet;

  /// Returns the [Wallet] address of this account.
  String get walletAddress => walletWithAddress?.address;

  /// Returns [true] if the account has the [Wallet] in memory.
  bool get hasWallet => wallet != null;

  /// Returns [true] if the account has the [Wallet] address in memory.
  bool get hasWalletAddress => walletAddress != null;

  /// Set a new [networkInfo], invalidating current [walletWithAddress].
  set networkInfo(NetworkInfo networkInfo) {
    _networkInfo = networkInfo;
    walletWithAddress = null;
  }

  /// Get the current [networkInfo].
  NetworkInfo get networkInfo => _networkInfo;

  /// Generates a new String of 24 space-separated mnemonic words.
  Future<String> generateMnemonic() {
    return statelessHandler.generateMnemonic();
  }

  /// Save the [mnemonic] in the secure storage.
  Future<void> storeMnemonic({@required String mnemonic}) {
    final mnemonicToStore = mnemonic;

    if (mnemonicToStore == null) {
      throw Exception('No mnemonic found in memory');
    }

    return statelessHandler.storeMnemonic(
      secretStorage: storage,
      secureStorageKey: secureStorageKey,
      mnemonic: mnemonicToStore,
    );
  }

  /// Restore and return the mnemonic from the secure storage.
  Future<String> fetchMnemonic() {
    return statelessHandler.fetchMnemonic(
      secretStorage: storage,
      secureStorageKey: secureStorageKey,
    );
  }

  /// Delete the mnemonic inside the secure storage.
  Future<void> deleteMnemonic() {
    return statelessHandler.deleteMnemonic(
      secretStorage: storage,
      secureStorageKey: secureStorageKey,
    );
  }

  /// Restore and return the [Wallet] with the mnemonic stored inside the
  /// secure storage.
  ///
  /// If there are not mnemonic stored then a [MnemonicNotStoredException] is
  /// thrown.
  Future<WalletWithMnemonic> restoreWallet() async {
    final mnemonic = await fetchMnemonic();

    if (mnemonic == null) {
      throw const MnemonicNotStoredException();
    }

    final wallet = await statelessHandler.deriveWallet(
      networkInfo: networkInfo,
      mnemonic: mnemonic,
    );

    walletWithAddress = WalletWithAddress(
      wallet: wallet,
      address: wallet.bech32Address,
    );

    return WalletWithMnemonic(wallet: wallet, mnemonic: mnemonic);
  }

  /// Generate a new [Wallet] associated with the optional [mnemonic],
  /// [networkInfo] and [lastDerivationPathSegment].
  ///
  /// If no [mnemonic] are specified then new words are generated and stored
  /// in the account.
  Future<WalletWithMnemonic> generateNewWallet({
    String mnemonic,
    String lastDerivationPathSegment,
  }) async {
    mnemonic = mnemonic ?? await generateMnemonic();

    final wallet = await statelessHandler.deriveWallet(
      networkInfo: networkInfo,
      mnemonic: mnemonic,
      lastDerivationPathSegment: lastDerivationPathSegment,
    );

    await storeMnemonic(mnemonic: mnemonic);

    walletWithAddress = WalletWithAddress(
      wallet: wallet,
      address: wallet.bech32Address,
    );

    return WalletWithMnemonic(wallet: wallet, mnemonic: mnemonic);
  }

  /// Generate a pairwise [Wallet] from the given [lastDerivationPathSegment].
  /// If no [mnemonic] is already loaded an [MnemonicNotStoredException] is
  /// thrown.
  Future<Wallet> generatePairwiseWallet({
    @required String lastDerivationPathSegment,
  }) async {
    final mnemonic = await fetchMnemonic();

    if (mnemonic == null) {
      throw MnemonicNotStoredException();
    }

    return statelessHandler.generatePairwiseWallet(
      networkInfo: networkInfo,
      mnemonic: mnemonic,
      lastDerivationPathSegment: lastDerivationPathSegment,
    );
  }

  /// Request an [amount] of free tokens.
  ///
  /// A [AccountRequestResponse] is returned with the success or failure of
  /// the request.
  ///
  /// If the account does not have a wallet then [WalletNotFoundException] is
  /// thrown.
  Future<AccountRequestResponse> requestFreeTokens({String amount}) {
    if (!hasWallet) {
      throw const WalletNotFoundException();
    }

    amount ??= '100000000';

    return statelessHandler.requestFreeTokens(
      walletAddress: walletAddress,
      amount: amount,
      httpHelper: httpHelper,
    );
  }

  /// Get the account balance of this account as a list of [StdCoin].
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  /// If an error happens in the request [AccountRequestError] is thrown.
  Future<List<StdCoin>> checkAccountBalance() async {
    if (!hasWallet) {
      throw const WalletNotFoundException();
    }

    return statelessHandler.checkAccountBalance(
      walletAddress: walletAddress,
      httpHelper: httpHelper,
    );
  }

  /// Send the [amount] of tokens from the accoun to a [recipientAddress] list.
  ///
  /// An optional [fee] and [mode] can be specified.
  ///
  /// Returns the [TransactionResult].
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<TransactionResult> sendTokens({
    @required String recipientAddress,
    @required List<StdCoin> amount,
    StdFee fee,
    BroadcastingMode mode,
  }) {
    if (!hasWallet) {
      throw const WalletNotFoundException();
    }

    return statelessHandler.sendTokens(
      senderWallet: walletWithAddress,
      recipientAddress: recipientAddress,
      amount: amount,
      fee: fee,
      mode: mode,
    );
  }
}
