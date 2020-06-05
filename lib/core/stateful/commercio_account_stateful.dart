import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

class StatefulCommercioAccount {
  final String secureStorageKey;
  final FlutterSecureStorage secureStorage;
  final NetworkInfo networkInfo;
  WalletWithAddress walletWithAddress;
  String mnemonic;

  StatefulCommercioAccount({
    String storageKey,
    FlutterSecureStorage storage,
    NetworkInfo networkInfo,
  })  : secureStorageKey = storageKey ?? 'commercio-account-mnemonic',
        secureStorage = storage ?? const FlutterSecureStorage(),
        networkInfo = networkInfo ??
            NetworkInfo(
              bech32Hrp: 'did:com:',
              lcdUrl: 'http://localhost:1317',
            );

  Wallet get wallet => walletWithAddress?.wallet;

  String get walletAddress => walletWithAddress?.address;

  bool get hasWallet => wallet != null;

  bool get hasWalletAddress => walletAddress != null;

  bool get hasMnemonic => mnemonic != null;

  Future<String> generateMnemonic() {
    return StatelessCommercioAccount.generateMnemonic()
        .then((value) => mnemonic = value);
  }

  Future<void> storeMnemonic({@required String mnemonic}) {
    return StatelessCommercioAccount.storeMnemonic(
        secureStorage: secureStorage,
        secureStorageKey: secureStorageKey,
        mnemonic: mnemonic);
  }

  Future<String> fetchMnemonic() {
    return StatelessCommercioAccount.fetchMnemonic(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);
  }

  Future<void> deleteMnemonic() {
    return StatelessCommercioAccount.deleteMnemonic(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);
  }

  Future<Wallet> restoreWallet() async {
    mnemonic ??= await fetchMnemonic();

    if (mnemonic == null) {
      throw const MnemonicNotStoredException();
    }

    final wallet = await StatelessCommercioAccount.deriveWallet(
        networkInfo: networkInfo, mnemonic: mnemonic);
    final walletAddress = await _preCalculateAddress(wallet);

    walletWithAddress =
        WalletWithAddress(wallet: wallet, address: walletAddress);

    return wallet;
  }

  /// Generate a new [Wallet] associated with the given works and the 
  /// optional [networkInfo].
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
    final walletAddress = await _preCalculateAddress(wallet);

    walletWithAddress =
        WalletWithAddress(wallet: wallet, address: walletAddress);

    return wallet;
  }

  Future<Wallet> generatePairwiseWallet({
    String lastDerivationPathSegment,
    String newMnemonic,
  }) {
    return StatelessCommercioAccount.generatePairwiseWallet(
        networkInfo: networkInfo, newMnemonic: newMnemonic);
  }

  Future<AccountRequestResponse> requestFreeTokens({
    String faucetDomain,
    String amount = '100000000',
  }) {
    if (walletAddress == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioAccount.requestFreeTokens(
        walletAddress: walletAddress);
  }

  Future<List<StdCoin>> checkAccountBalance() async {
    if (wallet == null || walletAddress == null) {
      throw const WalletNotFoundException();
    }

    // TODO: Check networkInfo

    return StatelessCommercioAccount.checkAccountBalance(
        walletAddress: walletAddress, lcdUrl: networkInfo.lcdUrl);
  }

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

  Future<String> _preCalculateAddress(Wallet wallet) async {
    return _computeWalletAddress(_ComputeWalletAddressData(wallet));
  }
}

class _ComputeWalletAddressData {
  final Wallet wallet;

  const _ComputeWalletAddressData(this.wallet);
}

String _computeWalletAddress(_ComputeWalletAddressData data) {
  return data.wallet.bech32Address;
}
