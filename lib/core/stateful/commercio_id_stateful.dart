import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart';

/// The [StatefulCommercioId] module allows to create a new identity and
/// associate to it a Did Document.
class StatefulCommercioId {
  final StatefulCommercioAccount commercioAccount;
  final FlutterSecureStorage secureStorage;
  final String secureStorageKey;
  CommercioIdKeys commercioIdKeys;

  /// Creates a new [StatefulCommercioId] with a [commercioAccount] and
  /// optional [storageKey], [storage] and [idKeys].
  StatefulCommercioId({
    @required this.commercioAccount,
    String storageKey,
    FlutterSecureStorage storage,
    CommercioIdKeys idKeys,
  })  : secureStorageKey = storageKey ?? 'commercio-id-rsa-keys',
        secureStorage = storage ?? const FlutterSecureStorage(),
        commercioIdKeys = idKeys;

  /// Returns [true] if there are [commercioIdKeys] in memory.
  bool get hasKeys => commercioIdKeys != null;

  /// Returns new generated [CommercioIdKeys] that cointains two RSA keys pair,
  /// one pair for verification and another for signature.
  ///
  /// The generated keys are also stored in the secure storage.
  Future<CommercioIdKeys> generateKeys() async {
    commercioIdKeys = await StatelessCommercioId.generateKeys();

    await storeKeys(idKeys: commercioIdKeys);

    return commercioIdKeys;
  }

  /// Get the [CommercioIdKeys] stored inside [secureStorage] and identified by
  /// [secureStorageKey].
  ///
  /// If no keys are found then a [NoKeysFoundException] is thrown.
  Future<CommercioIdKeys> restoreKeys() async {
    commercioIdKeys = await StatelessCommercioId.fetchKeys(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);

    if (commercioIdKeys == null) {
      throw const NoKeysFoundException();
    }

    return commercioIdKeys;
  }

  /// Save [idKeys] inside the the secure storage.
  Future<void> storeKeys({@required CommercioIdKeys idKeys}) {
    return StatelessCommercioId.storeKeys(
        secureStorage: secureStorage,
        secureStorageKey: secureStorageKey,
        idKeys: idKeys);
  }

  /// Get the [CommercioIdKeys] stored inside the secure storage.
  Future<CommercioIdKeys> fetchKeys() {
    return StatelessCommercioId.fetchKeys(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);
  }

  /// Delete the [CommercioIdKeys] inside the [secureStorage] identified by
  /// [secureStorageKey].
  Future<void> deleteKeys() {
    return StatelessCommercioId.deleteKeys(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);
  }

  /// Derive and return a [DidDocument] with optional [service].
  ///
  /// If no [commercioIdKeys] are in memory a [NoKeysFoundException] is thrown.
  /// If no [Wallet] exists then a [WalletNotFoundException] is thrown.
  Future<DidDocument> derivateDidDocument({
    List<DidDocumentService> service,
  }) {
    if (commercioIdKeys == null) {
      throw const NoKeysFoundException();
    }

    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioId.derivateDidDocument(
        wallet: commercioAccount.wallet,
        idKeys: commercioIdKeys,
        service: service);
  }

  /// Associate an optional [didDocument].
  /// If no [didDocument] is specified then its derived from the walle.
  /// An optional [fee] can be specified.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> setDidDocument({DidDocument didDocument}) async {
    didDocument ??= await derivateDidDocument();

    return StatelessCommercioId.setDidDocument(
        didDocument: didDocument, wallet: commercioAccount.wallet);
  }

  /// Sent the [rechargeAmount] to the centralized entity Tk (tumbler).
  /// Only avaiable in a testnet.
  ///
  /// An optional amount of [rechargeFee] and [rechargeGas] can be specified.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> rechargeGovernment({
    @required List<StdCoin> rechargeAmount,
    List<StdCoin> rechargeFee,
    String rechargeGas,
  }) {
    return StatelessCommercioId.rechargeGovernment(
        walletWithAddress: commercioAccount.walletWithAddress,
        rechargeAmount: rechargeAmount,
        rechargeFee: rechargeFee,
        rechargeGas: rechargeGas,
        httpHelper: commercioAccount.httpHelper);
  }

  /// Request a Did Power Up to move the [amount] of tokens from a centralized
  /// entity Tk to one of its [pairwiseAddress], using the optional
  /// [rsaSignaturePrivateKey]. If no key is specified the in-memory one is
  /// used.
  ///
  /// A Did Power Up is required to send documents.
  ///
  /// Throw [WalletNotFoundException] if not wallet is avaiable, throw
  /// [NoKeysFoundException] if no keys are avaiable.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> requestDidPowerUp({
    @required String pairwiseAddress,
    @required List<StdCoin> amount,
    RSAPrivateKey rsaSignaturePrivateKey,
  }) {
    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    rsaSignaturePrivateKey ??= commercioIdKeys?.rsaSignatureKeyPair?.privateKey;

    if (rsaSignaturePrivateKey == null) {
      throw const NoKeysFoundException();
    }

    return StatelessCommercioId.requestDidPowerUp(
        pairwiseAddress: pairwiseAddress,
        senderWallet: commercioAccount.wallet,
        amount: amount,
        rsaSignaturePrivateKey: rsaSignaturePrivateKey);
  }
}
