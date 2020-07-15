import 'dart:convert';
import 'dart:io';

import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/core/utils/utils.dart';
import 'package:commercio_ui/data/data.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/utils/export.dart';

class SecretStorageMethodsMock extends Mock implements SecretStorage {
  @override
  Future<void> write({@required String key, @required String value}) async {
    return Future.value();
  }

  @override
  Future<String> read({@required String key}) async {
    return Future.value();
  }

  @override
  Future<void> delete({@required String key}) {
    return Future.value();
  }
}

class HttpHelperMock extends Mock implements HttpHelper {}

void main() async {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  const String correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  final NetworkInfo correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'http://lcd-url',
  );
  Wallet correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  SecretStorage secretStorageMethodsMock = SecretStorageMethodsMock();
  const String secureStorageKey = 'secure-storage-key';
  final HttpHelper httpHelperMock = HttpHelperMock();
  String correctWalletAddress = correctWallet.bech32Address;
  final correctMetadata = CommercioDocMetadata(
    contentUri: 'contentUri',
    schema: CommercioDocMetadataSchema(
      uri: 'metadataSchemaUri',
      version: '1.0.0',
    ),
  );
  final correctCommercioAccount = StatefulCommercioAccount(
    storage: secretStorageMethodsMock,
    storageKey: secureStorageKey,
    networkInfo: correctNetworkInfo,
    httpHelper: httpHelperMock,
  );
  await correctCommercioAccount.generateNewWallet();
  final commercioAccountWithoutWallet = StatefulCommercioAccount(
    storage: secretStorageMethodsMock,
    storageKey: secureStorageKey,
    networkInfo: correctNetworkInfo,
    httpHelper: httpHelperMock,
  );

  const correctStdFee = const StdFee(
    amount: const [
      StdCoin(
        denom: 'ucommercio',
        amount: '10000',
      ),
    ],
    gas: '10000',
  );
  final String correctRecipientAddress =
      'did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u44';
  final List<String> recipients = [correctRecipientAddress];
  const String correctDocId = '4ec5eadc-e4da-43aa-b60f-000b5c24c262';
  final correctCommercioDoc = CommercioDoc(
    uuid: correctDocId,
    metadata: correctMetadata,
    recipientDids: recipients,
    senderDid: correctWalletAddress,
  );

  const String correctTxHash =
      'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  const String correctTransactionRaw =
      '{"height":"0","txhash":"$correctTxHash","raw_log":"[]"}';

  const String correctAccountDataRaw =
      '{"height":"70927","result":{"type":"cosmos-sdk/Account","value":{"address":"did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u33","coins":[{"denom":"ucommercio","amount":"99990300"}],"public_key":"did:com:pub1addwnpepq0efr3d09eja4utyghxte0n8xku33d3cnjmd3wjypfv4y9l540z66spk8xf","account_number":8,"sequence":1}}}';
  const String correctNodeInfoRaw =
      '{"node_info":{"protocol_version":{"p2p":"7","block":"10","app":"0"},"id":"b9a5b42aba9d5b962a4a9d478d364e9614f17b63","listen_addr":"tcp://0.0.0.0:26656","network":"devnet","version":"0.33.3","channels":"4020212223303800","moniker":"testnet-int-demo00","other":{"tx_index":"on","rpc_address":"tcp://0.0.0.0:26657"}},"application_version":{"name":"appnetwork","server_name":"cnd","client_name":"cndcli","version":"2.1.2","commit":"8d5916146ab76bb6a4059ab83c55d861d8c97130","build_tags":"netgo,ledger","go":"go version go1.14.4 linux/amd64"}}';

  group('Constructor', () {
    test('Correct', () {
      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: correctCommercioAccount,
      );

      expect(commercioDocs.commercioAccount, correctCommercioAccount);
    });
  });

  group('Derive commercio document', () {
    test('Correct', () async {
      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: correctCommercioAccount,
      );

      final commDoc = await commercioDocs.deriveCommercioDocument(
        metadata: correctMetadata,
        recipients: recipients,
      );

      expect(commDoc.metadata, correctMetadata);
      expect(commDoc.recipientDids, recipients);
    });

    test('No active wallet should throw an exception', () {
      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expect(
        () => commercioDocs.deriveCommercioDocument(
          metadata: correctMetadata,
          recipients: recipients,
        ),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });

  group('Share documents', () {
    AccountDataRetrieval.client = MockClient(
      (_) => Future.value(Response(correctAccountDataRaw, 200)),
    );
    NodeInfoRetrieval.client = MockClient(
      (_) => Future.value(Response(correctNodeInfoRaw, 200)),
    );

    test('Correct', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: correctCommercioAccount,
      );

      final response = await commercioDocs.shareDocuments(
        commercioDocs: [correctCommercioDoc],
      );

      expect(response.success, isTrue);
    });

    test('Correct + optional params', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: correctCommercioAccount,
      );

      final response = await commercioDocs.shareDocuments(
        commercioDocs: [correctCommercioDoc],
        fee: correctStdFee,
      );

      expect(response.success, isTrue);
    });

    test('No wallet should throw an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expectLater(
        () => commercioDocs.shareDocuments(
          commercioDocs: [correctCommercioDoc],
        ),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });

  group('Send receipt', () {
    AccountDataRetrieval.client = MockClient(
      (_) => Future.value(Response(correctAccountDataRaw, 200)),
    );
    NodeInfoRetrieval.client = MockClient(
      (_) => Future.value(Response(correctNodeInfoRaw, 200)),
    );

    test('Correct', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: correctCommercioAccount,
      );

      final result = await commercioDocs.sendReceipt(
        recipient: correctWalletAddress,
        txHash: correctTxHash,
        docId: correctDocId,
      );

      expect(result.success, isTrue);
    });

    test('Correct + proof + fee', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: correctCommercioAccount,
      );

      final result = await commercioDocs.sendReceipt(
        recipient: correctWalletAddress,
        txHash: correctTxHash,
        docId: correctDocId,
        proof: 'some proof',
        fee: correctStdFee,
      );

      expect(result.success, isTrue);
    });

    test('No wallet in commercioAccount should throw an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expect(
        () => commercioDocs.sendReceipt(
          recipient: correctWalletAddress,
          txHash: correctTxHash,
          docId: correctDocId,
        ),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });

  group('Sent documents', () {
    test('Correct', () async {
      final correctSentDocumentsRaw = File(
        'test_resources/correctSentDocuments.json',
      ).readAsStringSync();
      final correctSentDocuments = [
        CommercioDoc.fromJson(
          (jsonDecode(correctSentDocumentsRaw)['result'] as List)[0],
        )
      ];
      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.sentDocs,
        walletAddress: correctWalletAddress,
      )).thenAnswer(
        (_) => Future.value(Response(correctSentDocumentsRaw, 200)),
      );

      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: correctCommercioAccount,
      );

      final sentDocuments = await commercioDocs.sentDocuments(
        walletAddress: correctWalletAddress,
      );

      expect(sentDocuments, correctSentDocuments);
    });
  });

  group('Received documents', () {
    test('Correct', () async {
      final correctReceivedDocumentsRaw = File(
        'test_resources/correctReceivedDocuments.json',
      ).readAsStringSync();

      final correctReceivedDocuments = [
        CommercioDoc.fromJson(
            (jsonDecode(correctReceivedDocumentsRaw)['result'] as List)[0])
      ];
      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.receivedDocs,
        walletAddress: correctWalletAddress,
      )).thenAnswer(
        (_) => Future.value(Response(correctReceivedDocumentsRaw, 200)),
      );

      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: correctCommercioAccount,
      );

      final receivedDocuments = await commercioDocs.receivedDocuments(
        walletAddress: correctWalletAddress,
      );

      expect(receivedDocuments, correctReceivedDocuments);
    });
  });

  group('Sent receipts', () {
    test('Correct', () async {
      final correctSentReceiptsRaw = File(
        'test_resources/correctSentReceipts.json',
      ).readAsStringSync();

      final correctSentReceipts = [
        CommercioDocReceipt.fromJson(
            (jsonDecode(correctSentReceiptsRaw)['result'] as List)[0])
      ];
      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.sentReceipts,
        walletAddress: correctWalletAddress,
      )).thenAnswer(
        (_) => Future.value(Response(correctSentReceiptsRaw, 200)),
      );

      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: correctCommercioAccount,
      );

      final sentReceipts = await commercioDocs.sentReceipts(
        walletAddress: correctWalletAddress,
      );

      expect(sentReceipts, correctSentReceipts);
    });
  });

  group('Received receipts', () {
    test('Correct', () async {
      final correctReceivedReceiptsRaw = File(
        'test_resources/correctReceivedReceipts.json',
      ).readAsStringSync();
      final correctReceivedReceipts = [
        CommercioDocReceipt.fromJson(
            (jsonDecode(correctReceivedReceiptsRaw)['result'] as List)[0])
      ];
      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.receivedReceipts,
        walletAddress: correctWalletAddress,
      )).thenAnswer(
        (_) => Future.value(Response(correctReceivedReceiptsRaw, 200)),
      );

      final commercioDocs = StatefulCommercioDocs(
        commercioAccount: correctCommercioAccount,
      );

      final receivedReceipts = await commercioDocs.receivedReceipts(
        walletAddress: correctWalletAddress,
      );

      expect(receivedReceipts, correctReceivedReceipts);
    });
  });
}
