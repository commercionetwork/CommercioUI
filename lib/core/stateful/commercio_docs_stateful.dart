import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:meta/meta.dart';

/// The [StatefulCommercioDocs] allows you to send a document to another user,
/// and retrieve the list of documents that you have received.
class StatefulCommercioDocs {
  final StatefulCommercioAccount commercioAccount;

  /// Creates a [StatefulCommercioDocs] with [commercioAccount].
  StatefulCommercioDocs({@required this.commercioAccount});

  /// Returns the [CommercioDoc] from the given data.
  ///
  /// The document associated with the given [metadata] and having the
  /// optional [contentUri], [doSign] and [checksum] from the [senderWallet] to
  /// the [recipients] list of addresses.
  /// The [encryptedData] are encrypted with an optional [aesKey].
  /// If no [aesKey] is provided a new one is generated.
  ///
  /// The [docId] should be a valid UUID v4, if it's not specified a new one
  /// is generated.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<CommercioDoc> deriveCommercioDocument({
    @required CommercioDocMetadata metadata,
    @required List<String> recipients,
    String docId,
    String contentUri,
    CommercioDoSign doSign,
    CommercioDocChecksum checksum,
    List<EncryptedData> encryptedData,
    Key aesKey,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioDocs.deriveCommercioDocument(
      wallet: commercioAccount.wallet,
      metadata: metadata,
      recipients: recipients,
      docId: docId,
      contentUri: contentUri,
      doSign: doSign,
      checksum: checksum,
      encryptedData: encryptedData,
      aesKey: aesKey,
    );
  }

  /// Share the list of [CommercioDoc] from the [wallet].
  /// An optional [fee] can be specified.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  ///
  /// Returns the [TransactionResult].
  Future<TransactionResult> shareDocuments({
    @required List<CommercioDoc> commercioDocs,
    StdFee fee,
  }) async {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioDocs.shareDocuments(
      wallet: commercioAccount.wallet,
      commercioDocs: commercioDocs,
      fee: fee,
    );
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
    String proof = '',
    StdFee fee,
  }) {
    if (!commercioAccount.hasWallet) {
      throw const WalletNotFoundException();
    }

    return StatelessCommercioDocs.sendReceipt(
      senderWallet: commercioAccount.wallet,
      recipient: recipient,
      txHash: txHash,
      docId: docId,
      proof: proof,
      fee: fee,
    );
  }

  /// Returns the list of [CommercioDoc] sent by [walletAddress].
  ///
  /// An optional [HttpHelper] can be specified.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<List<CommercioDoc>> sentDocuments({
    @required String walletAddress,
  }) {
    return StatelessCommercioDocs.sentDocuments(
      walletAddress: walletAddress,
      httpHelper: commercioAccount.httpHelper,
    );
  }

  /// Returns the list of [CommercioDoc] sent by [walletAddress].
  ///
  /// An optional [HttpHelper] can be specified.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<List<CommercioDoc>> receivedDocuments({
    @required String walletAddress,
  }) {
    return StatelessCommercioDocs.receivedDocuments(
      walletAddress: walletAddress,
      httpHelper: commercioAccount.httpHelper,
    );
  }

  /// Returns the list of [CommercioDoc] received by [walletAddress].
  ///
  /// An optional [HttpHelper] can be specified.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<List<CommercioDocReceipt>> sentReceipts({
    @required String walletAddress,
  }) {
    return StatelessCommercioDocs.sentReceipts(
      walletAddress: walletAddress,
      httpHelper: commercioAccount.httpHelper,
    );
  }

  /// Returns the list of [CommercioDocReceipt] sent by [walletAddress].
  ///
  /// An optional [HttpHelper] can be specified.
  ///
  /// If the wallet does not exists then [WalletNotFoundException] is thrown.
  Future<List<CommercioDocReceipt>> receivedReceipts({
    @required String walletAddress,
  }) {
    return StatelessCommercioDocs.receivedReceipts(
      walletAddress: walletAddress,
      httpHelper: commercioAccount.httpHelper,
    );
  }
}
