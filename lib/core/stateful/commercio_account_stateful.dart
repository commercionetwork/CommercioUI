import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/core/utils/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

/// The [StatefulCommercioAccount] module allows to generate mnemonics, derive
/// wallets, send and request tokens.
class StatefulCommercioAccount {
  final String secureStorageKey;
  final FlutterSecureStorage secureStorage;
  final NetworkInfo networkInfo;
  final HttpHelper httpHelper;
  WalletWithAddress walletWithAddress;
  String mnemonic;

  /// Creates a [StatefulCommercioAccount] with the optional [storageKey],
  /// [storage] and [networkInfo].
  StatefulCommercioAccount({
    String storageKey,
    FlutterSecureStorage storage,
    NetworkInfo networkInfo,
    HttpHelper httpHelper,
  })  : secureStorageKey = storageKey ?? 'commercio-account-mnemonic',
        secureStorage = storage ?? const FlutterSecureStorage(),
        networkInfo = networkInfo ??
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

  /// Returns [true] if the account has the mnemonic in memory.
  bool get hasMnemonic => mnemonic != null;

  /// Generates a new String of 24 space-separated mnemonic words.
  Future<String> generateMnemonic() {
    return StatelessCommercioAccount.generateMnemonic()
        .then((value) => mnemonic = value);
  }

  /// Save the [mnemonic] in the secure storage.
  Future<void> storeMnemonic({@required String mnemonic}) {
    return StatelessCommercioAccount.storeMnemonic(
        secureStorage: secureStorage,
        secureStorageKey: secureStorageKey,
        mnemonic: mnemonic ?? this.mnemonic);
  }

  /// Restore and return the mnemonic from the secure storage.
  Future<String> fetchMnemonic() {
    return StatelessCommercioAccount.fetchMnemonic(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);
  }

  /// Delete the mnemonic inside the secure storage.
  Future<void> deleteMnemonic() {
    return StatelessCommercioAccount.deleteMnemonic(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);
  }

  /// Restore and return the [Wallet] with the mnemonic stored inside the
  /// secure storage.
  ///
  /// If there are not mnemonic stored then a [MnemonicNotStoredException] is
  /// thrown.
  Future<Wallet> restoreWallet() async {
    mnemonic ??= await fetchMnemonic();

    if (mnemonic == null) {
      throw const MnemonicNotStoredException();
    }

    final wallet = await StatelessCommercioAccount.deriveWallet(
        networkInfo: networkInfo, mnemonic: mnemonic);

    walletWithAddress =
        WalletWithAddress(wallet: wallet, address: wallet.bech32Address);

    return wallet;
  }

  /// Generate a new [Wallet] associated with the optional [mnemonic],
  /// [networkInfo] and [lastDerivationPathSegment].
  ///
  /// If no [mnemonic] are specified then new words are generated and stored
  /// in the account.
  Future<Wallet> generateNewWallet({
    String mnemonic,
    String lastDerivationPathSegment,
  }) async {
    this.mnemonic = mnemonic ?? await generateMnemonic();
    await storeMnemonic(mnemonic: mnemonic);

    final wallet = await StatelessCommercioAccount.deriveWallet(
        networkInfo: networkInfo,
        mnemonic: this.mnemonic,
        lastDerivationPathSegment: lastDerivationPathSegment);

    walletWithAddress =
        WalletWithAddress(wallet: wallet, address: wallet.bech32Address);

    return wallet;
  }

  /// Generate a pairwise [Wallet] from the optinal but suggested
  /// [lastDerivationPathSegment] and [newMnemonic]. If no [newMnemonic]
  /// are specified then they are generated.
  Future<Wallet> generatePairwiseWallet({
    String lastDerivationPathSegment,
    String newMnemonic,
  }) {
    return StatelessCommercioAccount.generatePairwiseWallet(
        networkInfo: networkInfo, newMnemonic: newMnemonic);
  }

  /// Request an [amount] of free tokens.
  ///
  /// A [AccountRequestResponse] is returned with the success or failure of
  /// the request.
  ///
  /// If the account does not have a wallet then [WalletNotFoundException] is
  /// thrown.
  Future<AccountRequestResponse> requestFreeTokens(
      {String amount = '100000000'}) {
    if (walletAddress == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioAccount.requestFreeTokens(
        walletAddress: walletAddress, amount: amount, httpHelper: httpHelper);
  }

  /// Get the account balance of this account as a list of [StdCoin].
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  /// If an error happens in the request [AccountRequestError] is thrown.
  Future<List<StdCoin>> checkAccountBalance() async {
    if (wallet == null || walletAddress == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioAccount.checkAccountBalance(
        walletAddress: walletAddress, httpHelper: httpHelper);
  }

  /// Send the [amount] of tokens from the accoun to a [recipientAddress] list.
  ///
  /// An optional [feeAmount] and [gas] can be specified.
  ///
  /// Returns the [TransactionResult].
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<TransactionResult> sendTokens({
    @required String recipientAddress,
    @required List<StdCoin> amount,
    List<StdCoin> feeAmount,
    String gas,
  }) {
    if (wallet == null || walletAddress == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioAccount.sendTokens(
        senderAddress: walletAddress,
        senderWallet: wallet,
        recipientAddress: recipientAddress,
        amount: amount,
        feeAmount: feeAmount,
        gas: gas);
  }
}
