import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

/// The [StatefulCommercioDocs] allows you to send a document to another user,
/// and retrieve the list of documents that you have received.
class StatefulCommercioDocs {
  final StatefulCommercioAccount commercioAccount;

  /// Creates a [StatefulCommercioDocs] with [commercioAccount].
  StatefulCommercioDocs({@required this.commercioAccount});

  /// Share the document associated with the given [metadata] and having the
  /// optional [contentUri], [doSign] and [checksum] from the
  /// [commercioAccount] to the [recipients] list of addresses.
  /// The [docId] should be a valid UUID v5, if it's not specified a new one
  /// is generated.
  /// An optional [fee] can be specified.
  ///
  /// Returns the [TransactionResult].
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
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

  /// Share the document associated with the given [metadata] and having the
  /// optional [contentUri], [doSign] and [checksum] from the
  /// [commercioAccount] to the [recipients] list of addresses.
  /// The [encryptedData] are encrypted with an optional [aesKey].
  /// If no [aesKey] is provided a new one is generated.
  ///
  /// The [docId] should be a valid UUID v5, if it's not specified a new one
  /// is generated.
  /// An optional [fee] can be specified.
  ///
  /// Returns the [TransactionResult].
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<TransactionResult> shareEncryptedDocument({
    @required CommercioDocMetadata metadata,
    @required List<String> recipients,
    @required List<EncryptedData> encryptedData,
    Key aesKey,
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
        encryptedData: encryptedData,
        aesKey: aesKey,
        docId: docId,
        doSign: doSign,
        checksum: checksum,
        contentUri: contentUri,
        fee: fee);
  }

  /// Send a receipt which tells the [recipient] that the document from
  /// identified by [docId] in transaction [txHash] was read
  /// by [commercioAccount].
  ///
  /// An optional reading [proof] can be specified and also a custom [fee].
  ///
  /// Returns the [TransactionResult].
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<TransactionResult> sendReceipt({
    @required String recipient,
    @required String txHash,
    @required String docId,
    String proof = "",
    StdFee fee,
  }) {
    if (commercioAccount.wallet == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioDocs.sendReceipt(
        senderWallet: commercioAccount.wallet,
        recipient: recipient,
        txHash: txHash,
        docId: docId,
        proof: proof,
        fee: fee);
  }

  /// Returns the list of [CommercioDoc] sent from [walletWithAddress].
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<List<CommercioDoc>> sentDocuments() async {
    if (commercioAccount.walletWithAddress == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioDocs.sentDocuments(
      walletWithAddress: commercioAccount.walletWithAddress,
    );
  }

  /// Returns the list of [CommercioDoc] received by [walletWithAddress].
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<List<CommercioDoc>> receivedDocuments() async {
    if (commercioAccount.walletWithAddress == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioDocs.receivedDocuments(
      walletWithAddress: commercioAccount.walletWithAddress,
    );
  }

  /// Returns the list of [CommercioDocReceipt] sent from [walletWithAddress].
  Future<List<CommercioDocReceipt>> sentReceipts() async {
    if (commercioAccount.walletWithAddress == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioDocs.sentReceipts(
      walletWithAddress: commercioAccount.walletWithAddress,
    );
  }

  /// Returns the list of [CommercioDocReceipt] received by
  /// [walletWithAddress].
  Future<List<CommercioDocReceipt>> receivedReceipts() async {
    if (commercioAccount.walletWithAddress == null) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioDocs.sentReceipts(
      walletWithAddress: commercioAccount.walletWithAddress,
    );
  }
}
