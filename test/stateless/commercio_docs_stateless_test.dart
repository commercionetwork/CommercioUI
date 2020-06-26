import 'dart:convert';
import 'dart:io';

import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/utils/export.dart';

class FlutterSecureStorageMock extends Mock implements FlutterSecureStorage {}

void main() {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  Wallet correctWallet;
  String correctWalletAddress;
  final NetworkInfo correctNetworkInfo =
      NetworkInfo(bech32Hrp: 'bech32Hrp', lcdUrl: 'http://lcd-url');
  const String correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  final correctMetadata = CommercioDocMetadata(
    contentUri: 'contentUri',
    schema: CommercioDocMetadataSchema(
      uri: 'metadataSchemaUri',
      version: '1.0.0',
    ),
  );
  final String correctRecipientAddress =
      'did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u44';
  final List<String> recipients = [correctRecipientAddress];

  const String correctTxHash =
      'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  const String correctTransactionRaw =
      '{"height":"0","txhash":"$correctTxHash","raw_log":"[]"}';

  const String correctAccountDataRaw =
      '{"height":"70927","result":{"type":"cosmos-sdk/Account","value":{"address":"did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u33","coins":[{"denom":"ucommercio","amount":"99990300"}],"public_key":"did:com:pub1addwnpepq0efr3d09eja4utyghxte0n8xku33d3cnjmd3wjypfv4y9l540z66spk8xf","account_number":8,"sequence":1}}}';
  const String correctNodeInfoRaw =
      '{"node_info":{"protocol_version":{"p2p":"7","block":"10","app":"0"},"id":"b9a5b42aba9d5b962a4a9d478d364e9614f17b63","listen_addr":"tcp://0.0.0.0:26656","network":"devnet","version":"0.33.3","channels":"4020212223303800","moniker":"testnet-int-demo00","other":{"tx_index":"on","rpc_address":"tcp://0.0.0.0:26657"}},"application_version":{"name":"appnetwork","server_name":"cnd","client_name":"cndcli","version":"2.1.2","commit":"8d5916146ab76bb6a4059ab83c55d861d8c97130","build_tags":"netgo,ledger","go":"go version go1.14.4 linux/amd64"}}';
  const String wrongRecipientAddressRaw =
      '{"error":"decoding bech32 failed: invalid bech32 string length 3"}';

  const String correctDocId = '4ec5eadc-e4da-43aa-b60f-000b5c24c262';

  setUp(() {
    correctWallet =
        Wallet.derive(correctMnemonic.split(' '), correctNetworkInfo);
    correctWalletAddress = correctWallet.bech32Address;
  });

  group('Share document', () {
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

      final result = await StatelessCommercioDocs.shareDocument(
        senderWallet: correctWallet,
        metadata: correctMetadata,
        recipients: recipients,
      );

      expect(result.success, isTrue);
    });

    test('Correct with fee', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final result = await StatelessCommercioDocs.shareDocument(
        senderWallet: correctWallet,
        metadata: correctMetadata,
        recipients: recipients,
        fee: const StdFee(
          amount: const [
            StdCoin(
              denom: 'ucommercio',
              amount: '10000',
            ),
          ],
          gas: '10000',
        ),
      );

      expect(result.success, isTrue);
    });

    test('Wrong recipient address', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(wrongRecipientAddressRaw, 400)),
      );

      expectLater(
        () => StatelessCommercioDocs.shareDocument(
          senderWallet: correctWallet,
          metadata: correctMetadata,
          recipients: const ['abc'],
        ),
        throwsException,
      );
    });
  });

  group('Share encrypted document', () {
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

      final result = await StatelessCommercioDocs.shareEncryptedDocument(
        contentUri: 'contentUri',
        wallet: correctWallet,
        metadata: correctMetadata,
        recipients: recipients,
        encryptedData: const [EncryptedData.CONTENT_URI],
      );

      expect(result.success, isTrue);
    });

    test('Correct with fee', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final result = await StatelessCommercioDocs.shareEncryptedDocument(
        contentUri: 'contentUri',
        wallet: correctWallet,
        metadata: correctMetadata,
        recipients: recipients,
        encryptedData: const [EncryptedData.CONTENT_URI],
        fee: const StdFee(
          amount: const [
            StdCoin(
              denom: 'ucommercio',
              amount: '10000',
            ),
          ],
          gas: '10000',
        ),
      );

      expect(result.success, isTrue);
    });

    test('EncryptedData metadata content uri', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final result = await StatelessCommercioDocs.shareEncryptedDocument(
        contentUri: 'contentUri',
        wallet: correctWallet,
        metadata: correctMetadata,
        recipients: recipients,
        encryptedData: const [EncryptedData.METADATA_CONTENT_URI],
      );

      expect(result.success, isTrue);
    });

    test('EncryptedData metadata schema uri', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final result = await StatelessCommercioDocs.shareEncryptedDocument(
        contentUri: 'contentUri',
        wallet: correctWallet,
        metadata: correctMetadata,
        recipients: recipients,
        encryptedData: const [EncryptedData.METADATA_SCHEMA_URI],
      );

      expect(result.success, isTrue);
    });

    test('EncryptedData content uri without field should rise error', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      expectLater(
        () => StatelessCommercioDocs.shareEncryptedDocument(
          wallet: correctWallet,
          metadata: correctMetadata,
          recipients: recipients,
          encryptedData: const [EncryptedData.CONTENT_URI],
        ),
        throwsNoSuchMethodError,
      );
    });

    test('Wrong recipient address', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(wrongRecipientAddressRaw, 400)),
      );

      expectLater(
        () => StatelessCommercioDocs.shareDocument(
          senderWallet: correctWallet,
          metadata: correctMetadata,
          recipients: const ['abc'],
        ),
        throwsException,
      );
    });
  });

  group('Send receipt', () {
    test('Correct', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final result = await StatelessCommercioDocs.sendReceipt(
        senderWallet: correctWallet,
        recipient: recipients[0],
        txHash: correctTxHash,
        docId: correctDocId,
      );

      expect(result.success, isTrue);
    });

    test('Wrong recipient address', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(wrongRecipientAddressRaw, 400)),
      );

      expectLater(
        () => StatelessCommercioDocs.sendReceipt(
          senderWallet: correctWallet,
          recipient: 'abc',
          txHash: correctTxHash,
          docId: correctDocId,
        ),
        throwsException,
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
            (jsonDecode(correctSentDocumentsRaw)['result'] as List)[0])
      ];

      Network.client = MockClient(
          (_) => Future.value(Response(correctSentDocumentsRaw, 200)));

      final sentDocuments = await StatelessCommercioDocs.sentDocuments(
        walletWithAddress: WalletWithAddress(
          wallet: correctWallet,
          address: correctWalletAddress,
        ),
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

      Network.client = MockClient(
          (_) => Future.value(Response(correctReceivedDocumentsRaw, 200)));

      final receivedDocuments = await StatelessCommercioDocs.receivedDocuments(
        walletWithAddress: WalletWithAddress(
          wallet: correctWallet,
          address: correctWalletAddress,
        ),
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

      Network.client = MockClient(
          (_) => Future.value(Response(correctSentReceiptsRaw, 200)));

      final sentReceipts = await StatelessCommercioDocs.sentReceipts(
        walletWithAddress: WalletWithAddress(
          wallet: correctWallet,
          address: correctWalletAddress,
        ),
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

      Network.client = MockClient(
          (_) => Future.value(Response(correctReceivedReceiptsRaw, 200)));

      final receivedDocuments = await StatelessCommercioDocs.receivedReceipts(
        walletWithAddress: WalletWithAddress(
          wallet: correctWallet,
          address: correctWalletAddress,
        ),
      );

      expect(receivedDocuments, correctReceivedReceipts);
    });
  });
}
