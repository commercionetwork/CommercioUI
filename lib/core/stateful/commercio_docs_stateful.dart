import 'package:commercio_ui/core/stateful/commercio_account_stateful.dart';
import 'package:commercio_ui/entities/exceptions/export.dart';
import 'package:commercio_ui/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

class StatefulCommercioDocs {
  final StatefulCommercioAccount commercioAccount;

  StatefulCommercioDocs({@required this.commercioAccount});

  Future<TransactionResult> shareDocument({
    @required CommercioDocMetadata metadata,
    @required List<String> recipients,
    String docId,
    CommercioDoSign doSign,
    CommercioDocChecksum checksum,
    String contentUri,
    StdFee fee,
  }) async {
    return shareEncryptedDocument(
      metadata: metadata,
      recipients: recipients,
      aesKey: null,
      encryptedData: null,
      docId: docId,
      doSign: doSign,
      checksum: checksum,
      contentUri: contentUri,
      fee: fee,
    );
  }

  Future<TransactionResult> shareEncryptedDocument({
    @required CommercioDocMetadata metadata,
    @required List<String> recipients,
    @required Key aesKey,
    @required List<EncryptedData> encryptedData,
    String docId,
    CommercioDoSign doSign,
    CommercioDocChecksum checksum,
    String contentUri,
    StdFee fee,
  }) {
    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioDocs.shareEncryptedDocument(
        wallet: commercioAccount.wallet,
        metadata: metadata,
        recipients: recipients,
        aesKey: aesKey,
        encryptedData: encryptedData,
        docId: docId,
        doSign: doSign,
        checksum: checksum,
        contentUri: contentUri,
        fee: fee);
  }

  Future<TransactionResult> sendReceipt({
    @required String recipient,
    @required String txHash,
    @required String docId,
  }) {
    return StatelessCommercioDocs.sendReceipt(
        senderWallet: commercioAccount.wallet,
        recipient: recipient,
        txHash: txHash,
        docId: docId);
  }

  Future<List<CommercioDoc>> sentDocuments() async {
    if (commercioAccount.walletWithAddress == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioDocs.sentDocuments(
        walletWithAddress: commercioAccount.walletWithAddress);
  }

  Future<List<CommercioDoc>> receivedDocuments() async {
    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioDocs.receivedDocuments(
        walletWithAddress: commercioAccount.walletWithAddress);
  }
}
