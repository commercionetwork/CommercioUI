import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/data/data.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

/// The [StatefulCommercioId] module allows to create a new identity and
/// associate to it a Did Document.
class StatefulCommercioId {
  final StatefulCommercioAccount commercioAccount;
  final ISecretStorage storage;
  final String secureStorageKey;
  CommercioIdKeys commercioIdKeys;
  DidDocument didDocument;

  /// Creates a new [StatefulCommercioId] with a [commercioAccount] and
  /// optional [storageKey], [storage] and [idKeys].
  StatefulCommercioId({
    @required this.commercioAccount,
    String storageKey,
    ISecretStorage storage,
    CommercioIdKeys idKeys,
  })  : secureStorageKey = storageKey ?? 'commercio-id-rsa-keys',
        storage = storage ?? SecretStorage(),
        commercioIdKeys = idKeys;

  /// Returns [true] if there are [commercioIdKeys] in memory.
  bool get hasKeys => commercioIdKeys != null;

  /// Returns [true] if there is a [DidDocument] in memory.
  bool get hasDidDocument => didDocument != null;

  /// Returns new generated [CommercioIdKeys] that cointains two RSA keys pair,
  /// one pair for verification and another for signature.
  ///
  /// *Warning*: generate new keys will invalidate all did documents currently
  /// in memory.
  ///
  /// The generated keys are also stored in the secure storage.
  Future<CommercioIdKeys> generateKeys() async {
    _invalidateDidDocument();

    commercioIdKeys = await StatelessCommercioId.generateKeys();

    await storeKeys(idKeys: commercioIdKeys);

    return commercioIdKeys;
  }

  /// Get the [CommercioIdKeys] stored inside [secureStorage] and identified by
  /// [secureStorageKey].
  ///
  /// If no keys are found then a [NoKeysFoundException] is thrown.
  Future<CommercioIdKeys> restoreKeys() async {
    commercioIdKeys = await StatelessCommercioId.restoreKeys(
      secretStorage: storage,
      secureStorageKey: secureStorageKey,
    );

    if (commercioIdKeys == null) {
      throw const NoKeysFoundException();
    }

    return commercioIdKeys;
  }

  /// Save [idKeys] inside the the secure storage.
  Future<void> storeKeys({@required CommercioIdKeys idKeys}) {
    return StatelessCommercioId.storeKeys(
      secretStorage: storage,
      secureStorageKey: secureStorageKey,
      idKeys: idKeys,
    );
  }

  /// Delete the [CommercioIdKeys] inside the [secureStorage] identified by
  /// [secureStorageKey].
  Future<void> deleteKeys() {
    return StatelessCommercioId.deleteKeys(
      secretStorage: storage,
      secureStorageKey: secureStorageKey,
    );
  }

  /// Derive and return a [DidDocument] with optional [service].
  ///
  /// If no [commercioIdKeys] are in memory a [NoKeysFoundException] is thrown.
  /// If no [Wallet] exists then a [WalletNotFoundException] is thrown.
  Future<DidDocument> deriveDidDocument({
    List<DidDocumentService> service,
  }) async {
    if (!hasKeys) {
      throw const NoKeysFoundException();
    }

    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    didDocument = await StatelessCommercioId.deriveDidDocument(
      wallet: commercioAccount.wallet,
      idKeys: commercioIdKeys,
      service: service,
    );

    return didDocument;
  }

  /// Associate an optional list of [didDocument].
  /// If no [didDocument] is specified then if there is a previously generated
  /// [DidDocument] (for example by calling `derivateDidDocument()`) that is
  /// used. If no [DidDocument] is avaible a new one is derived.
  /// An optional [fee] can be specified.
  ///
  /// If no [commercioAccount] does not have a wallet then a
  /// [WalletNotFoundException] is thrown.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> setDidDocuments({
    List<DidDocument> didDocuments,
    StdFee fee,
  }) async {
    if (didDocuments == null || didDocuments.isEmpty) {
      if (hasDidDocument) {
        didDocuments = [didDocument];
      } else {
        didDocument = await deriveDidDocument();
        didDocuments = [didDocument];
      }
    }

    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    //didDocument = await deriveDidDocument();

    return StatelessCommercioId.setDidDocuments(
      didDocuments: didDocuments,
      wallet: commercioAccount.wallet,
      fee: fee,
    );
  }

  /// Sent the [rechargeAmount] to the centralized entity Tk (tumbler).
  /// Only avaiable in a testnet.
  ///
  /// An optional amount of [rechargeFee] and [rechargeGas] can be specified.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> rechargeTumbler({
    @required List<StdCoin> rechargeAmount,
    List<StdCoin> rechargeFee,
    String rechargeGas,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioId.rechargeTumbler(
      walletWithAddress: commercioAccount.walletWithAddress,
      rechargeAmount: rechargeAmount,
      rechargeFee: rechargeFee,
      rechargeGas: rechargeGas,
      httpHelper: commercioAccount.httpHelper,
    );
  }

  /// Derive and returns a [RequestDidPowerUp] object from the [wallet],
  /// [pairwiseAddress], [amount] and [rsaSignaturePrivateKey].
  ///
  /// Throw [WalletNotFoundException] if not wallet is avaiable.
  /// Throw [NoKeysFoundException] if no keys are avaiable.
  ///
  /// In general [pairwiseAddress] is obtained generating it from the [wallet].
  Future<RequestDidPowerUp> deriveDidPowerUpRequest({
    @required String pairwiseAddress,
    @required List<StdCoin> amount,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    if (!hasKeys) {
      throw const NoKeysFoundException();
    }

    return StatelessCommercioId.deriveDidPowerUpRequest(
      wallet: commercioAccount.wallet,
      pairwiseAddress: pairwiseAddress,
      amount: amount,
      rsaSignaturePrivateKey: commercioIdKeys.rsaSignatureKeyPair.privateKey,
    );
  }

  /// Request a list of Did Power Up from [senderWallet] for every power up
  /// request in [powerUpRequests].
  /// An optional [fee] can be specified.
  ///
  /// A did power up request is required to move the amount of
  /// tokens from a centralized entity Tk to one of its pairwiseAddress,
  /// using the rsaSignaturePrivateKey.
  ///
  /// A Did Power Up is required to send documents.
  ///
  /// Throw [WalletNotFoundException] if not wallet is avaiable.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> requestDidPowerUps({
    @required List<RequestDidPowerUp> powerUpRequests,
    StdFee fee,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioId.requestDidPowerUps(
      senderWallet: commercioAccount.wallet,
      powerUpRequests: powerUpRequests,
      fee: fee,
    );
  }

  /// Invalidate the current in-memory [didDocument].
  void _invalidateDidDocument() {
    didDocument = null;
  }
}
