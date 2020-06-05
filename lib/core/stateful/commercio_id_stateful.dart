import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart';

class StatefulCommercioId {
  final StatefulCommercioAccount commercioAccount;
  final FlutterSecureStorage secureStorage;
  final String secureStorageKey;
  CommercioIdKeys commercioIdKeys;

  StatefulCommercioId({
    @required this.commercioAccount,
    String storageKey,
    FlutterSecureStorage storage,
    CommercioIdKeys idKeys,
  })  : secureStorageKey = storageKey ?? 'commercio-id-rsa-keys',
        secureStorage = storage ?? const FlutterSecureStorage(),
        commercioIdKeys = idKeys;

  bool get hasKeys => commercioIdKeys != null;

  Future<CommercioIdKeys> generateKeys() async {
    commercioIdKeys = await StatelessCommercioId.generateKeys();

    await storeKeys(idKeys: commercioIdKeys);

    return commercioIdKeys;
  }

  Future<CommercioIdKeys> restoreKeys() async {
    commercioIdKeys = await StatelessCommercioId.fetchKeys(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);

    if (commercioIdKeys == null) {
      throw const NoKeysFoundException();
    }

    return commercioIdKeys;
  }

  Future<void> storeKeys({@required CommercioIdKeys idKeys}) {
    return StatelessCommercioId.storeKeys(
        secureStorage: secureStorage,
        secureStorageKey: secureStorageKey,
        idKeys: idKeys);
  }

  Future<CommercioIdKeys> fetchKeys() {
    return StatelessCommercioId.fetchKeys(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);
  }

  Future<void> deleteKeys() {
    return StatelessCommercioId.deleteKeys(
        secureStorage: secureStorage, secureStorageKey: secureStorageKey);
  }

  Future<DidDocument> derivateDidDocument() {
    if (commercioIdKeys == null) {
      throw const NoKeysFoundException();
    }

    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioId.derivateDidDocument(
        wallet: commercioAccount.wallet, idKeys: commercioIdKeys);
  }

  Future<TransactionResult> setDidDocument({DidDocument didDocument}) async {
    didDocument ??= await derivateDidDocument();

    return StatelessCommercioId.setDidDocument(
        didDocument: didDocument, wallet: commercioAccount.wallet);
  }

  Future<TransactionResult> rechargeGovernment({
    @required List<StdCoin> rechargeAmount,
    List<StdCoin> rechargeFee,
    String rechargeGas,
  }) {
    return StatelessCommercioId.rechargeGovernment(
        walletWithAddress: commercioAccount.walletWithAddress,
        rechargeAmount: rechargeAmount,
        rechargeFee: rechargeFee,
        rechargeGas: rechargeGas);
  }

  Future<TransactionResult> requestDidPowerUp({
    @required String pairwiseAddress,
    @required List<StdCoin> amount,
    RSAPrivateKey rsaSignaturePrivateKey,
  }) {
    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    if (commercioIdKeys == null) {
      throw const NoKeysFoundException();
    }

    rsaSignaturePrivateKey ??= commercioIdKeys.rsaSignatureKeyPair.privateKey;

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
