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

class HttpHelperMock extends Mock implements HttpHelper {}

void main() {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  const commercioDocs = StatelessCommercioDocs();
  const correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  final correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'http://lcd-url',
  );
  final correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  final correctWalletAddress = correctWallet.bech32Address;

  // final correctMetadata = CommercioDocMetadata(
  //   contentUri: 'contentUri',
  //   schema: CommercioDocMetadataSchema(
  //     uri: 'metadataSchemaUri',
  //     version: '1.0.0',
  //   ),
  // );
  // final correctRecipientAddress =
  // 'did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u44';
  // final recipients = [correctRecipientAddress];
  const correctDocId = '4ec5eadc-e4da-43aa-b60f-000b5c24c262';
  // final correctCommercioDoc = CommercioDoc(
  //   uuid: correctDocId,
  //   metadata: correctMetadata,
  //   recipientDids: recipients,
  //   senderDid: correctWalletAddress,
  // );

  const correctTxHash =
      'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  // const correctTransactionRaw =
  //     '{"height":"0","txhash":"$correctTxHash","raw_log":"[]"}';

  const correctAccountDataRaw =
      '{"height":"70927","result":{"type":"cosmos-sdk/Account","value":{"address":"did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u33","coins":[{"denom":"ucommercio","amount":"99990300"}],"public_key":"did:com:pub1addwnpepq0efr3d09eja4utyghxte0n8xku33d3cnjmd3wjypfv4y9l540z66spk8xf","account_number":8,"sequence":1}}}';
  const correctNodeInfoRaw =
      '{"node_info":{"protocol_version":{"p2p":"7","block":"10","app":"0"},"id":"b9a5b42aba9d5b962a4a9d478d364e9614f17b63","listen_addr":"tcp://0.0.0.0:26656","network":"devnet","version":"0.33.3","channels":"4020212223303800","moniker":"testnet-int-demo00","other":{"tx_index":"on","rpc_address":"tcp://0.0.0.0:26657"}},"application_version":{"name":"appnetwork","server_name":"cnd","client_name":"cndcli","version":"2.1.2","commit":"8d5916146ab76bb6a4059ab83c55d861d8c97130","build_tags":"netgo,ledger","go":"go version go1.14.4 linux/amd64"}}';

  final httpHelperMock = HttpHelperMock();
  const correctProof = 'proof';
  // final correctDocReceipt = CommercioDocReceipt(
  //   uuid: correctDocId,
  //   senderDid: correctWalletAddress,
  //   recipientDid: correctWalletAddress,
  //   txHash: correctTxHash,
  //   documentUuid: correctDocId,
  // );

  group('Derive commercio document', () {
    AccountDataRetrieval.client = MockClient(
      (_) => Future.value(Response(correctAccountDataRaw, 200)),
    );
    NodeInfoRetrieval.client = MockClient(
      (_) => Future.value(Response(correctNodeInfoRaw, 200)),
    );

    //   test('Correct', () async {
    //     TxSender.client = MockClient(
    //       (_) => Future.value(Response(correctTransactionRaw, 200)),
    //     );

    //     final commercioDoc = await commercioDocs.deriveCommercioDocument(
    //       wallet: correctWallet,
    //       metadata: correctMetadata,
    //       recipients: recipients,
    //     );

    //     expect(commercioDoc.metadata, correctMetadata);
    //     expect(commercioDoc.recipientDids, recipients);
    //   });
  });

  // group('Share documents', () {
  //   AccountDataRetrieval.client = MockClient(
  //     (_) => Future.value(Response(correctAccountDataRaw, 200)),
  //   );
  //   NodeInfoRetrieval.client = MockClient(
  //     (_) => Future.value(Response(correctNodeInfoRaw, 200)),
  //   );

  //   test('Correct', () async {
  //     TxSender.client = MockClient(
  //       (_) => Future.value(Response(correctTransactionRaw, 200)),
  //     );

  //     final result = await commercioDocs.shareDocuments(
  //       commercioDocs: [correctCommercioDoc],
  //       wallet: correctWallet,
  //     );

  //     expect(result.success, isTrue);
  //   });

  //   test('Correct with fee', () async {
  //     TxSender.client = MockClient(
  //       (_) => Future.value(Response(correctTransactionRaw, 200)),
  //     );

  //     final result = await commercioDocs.shareDocuments(
  //       commercioDocs: [correctCommercioDoc],
  //       wallet: correctWallet,
  //       fee: const StdFee(
  //         amount: [
  //           StdCoin(
  //             denom: 'ucommercio',
  //             amount: '10000',
  //           ),
  //         ],
  //         gas: '10000',
  //       ),
  //     );

  //     expect(result.success, isTrue);
  //   });
  // });

  group('Derive receipt', () {
    test('Correct', () {
      final receipt = commercioDocs.deriveReceipt(
        wallet: correctWallet,
        recipient: correctWalletAddress,
        txHash: correctTxHash,
        documentId: correctDocId,
        proof: correctProof,
      );

      expect(receipt.uuid, isA<String>());
      expect(receipt.documentUuid, correctDocId);
      expect(receipt.senderDid, correctWalletAddress);
      expect(receipt.recipientDid, correctWalletAddress);
      expect(receipt.txHash, correctTxHash);
      expect(receipt.proof, correctProof);
    });
  });

  // group('Send receipt', () {
  //   test('Correct', () async {
  //     TxSender.client = MockClient(
  //       (_) => Future.value(Response(correctTransactionRaw, 200)),
  //     );

  //     final result = await commercioDocs.sendReceipts(
  //       commercioDocReceipts: [correctDocReceipt],
  //       wallet: correctWallet,
  //     );

  //     expect(result.success, isTrue);
  //   });
  // });

  group('Sent documents', () {
    test('Correct', () async {
      final correctSentDocumentsRaw = File(
        'test_resources/correctSentDocuments.json',
      ).readAsStringSync();

      final correctSentDocuments = [
        CommercioDoc.fromJson(
            (jsonDecode(correctSentDocumentsRaw)['result'] as List)[0])
      ];

      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.sentDocs,
        walletAddress: correctWalletAddress,
      )).thenAnswer(
        (_) => Future.value(Response(correctSentDocumentsRaw, 200)),
      );

      final sentDocuments = await commercioDocs.sentDocuments(
        walletAddress: correctWalletAddress,
        httpHelper: httpHelperMock,
      );

      expect(sentDocuments, correctSentDocuments);
    });

    test('Default HttpHelper throws an exception in test env', () async {
      expect(
        () => commercioDocs.sentDocuments(
          walletAddress: correctWalletAddress,
        ),
        throwsException,
      );
    });

    test('Network error should throw an exception', () async {
      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.sentDocs,
        walletAddress: correctWalletAddress,
      )).thenThrow(Exception());

      expect(
        () => commercioDocs.sentDocuments(
          walletAddress: correctWalletAddress,
          httpHelper: httpHelperMock,
        ),
        throwsException,
      );
    });

    test('404 not found should throw an exception', () async {
      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.sentDocs,
        walletAddress: '',
      )).thenAnswer(
        (_) => Future.value(Response('404 Not Found', 404)),
      );

      expect(
        () => commercioDocs.sentDocuments(
          walletAddress: '',
          httpHelper: httpHelperMock,
        ),
        throwsException,
      );
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

      final receivedDocuments = await commercioDocs.receivedDocuments(
        walletAddress: correctWalletAddress,
        httpHelper: httpHelperMock,
      );

      expect(receivedDocuments, correctReceivedDocuments);
    });

    test('Default HttpHelper throws an exception in test env', () async {
      expect(
        () => commercioDocs.receivedDocuments(
          walletAddress: correctWalletAddress,
        ),
        throwsException,
      );
    });

    test('Network error should throw an exception', () async {
      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.receivedDocs,
        walletAddress: correctWalletAddress,
      )).thenThrow(Exception());

      expect(
        () => commercioDocs.receivedDocuments(
          walletAddress: correctWalletAddress,
          httpHelper: httpHelperMock,
        ),
        throwsException,
      );
    });

    test('404 not found should throw an exception', () async {
      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.receivedDocs,
        walletAddress: '',
      )).thenAnswer(
        (_) => Future.value(Response('404 Not Found', 404)),
      );

      expect(
        () => commercioDocs.receivedDocuments(
          walletAddress: '',
          httpHelper: httpHelperMock,
        ),
        throwsException,
      );
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

      final sentReceipts = await commercioDocs.sentReceipts(
        walletAddress: correctWalletAddress,
        httpHelper: httpHelperMock,
      );

      expect(sentReceipts, correctSentReceipts);
    });

    test('Default HttpHelper throws an exception in test env', () async {
      expect(
        () => commercioDocs.sentReceipts(
          walletAddress: correctWalletAddress,
        ),
        throwsException,
      );
    });

    test('Network error should throw an exception', () async {
      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.sentReceipts,
        walletAddress: correctWalletAddress,
      )).thenThrow(Exception());

      expect(
        () => commercioDocs.sentReceipts(
          walletAddress: correctWalletAddress,
          httpHelper: httpHelperMock,
        ),
        throwsException,
      );
    });

    test('404 not found should throw an exception', () async {
      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.sentReceipts,
        walletAddress: '',
      )).thenAnswer(
        (_) => Future.value(Response('404 Not Found', 404)),
      );

      expect(
        () => commercioDocs.sentReceipts(
          walletAddress: '',
          httpHelper: httpHelperMock,
        ),
        throwsException,
      );
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

      final receivedReceipts = await commercioDocs.receivedReceipts(
        walletAddress: correctWalletAddress,
        httpHelper: httpHelperMock,
      );

      expect(receivedReceipts, correctReceivedReceipts);
    });

    test('Default HttpHelper throws an exception in test env', () async {
      expect(
        () => commercioDocs.receivedReceipts(
          walletAddress: correctWalletAddress,
        ),
        throwsException,
      );
    });

    test('Network error should throw an exception', () async {
      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.receivedReceipts,
        walletAddress: correctWalletAddress,
      )).thenThrow(Exception());

      expect(
        () => commercioDocs.receivedReceipts(
          walletAddress: correctWalletAddress,
          httpHelper: httpHelperMock,
        ),
        throwsException,
      );
    });

    test('404 not found should throw an exception', () async {
      when(httpHelperMock.getRequest(
        endpoint: HttpEndpoint.receivedReceipts,
        walletAddress: '',
      )).thenAnswer(
        (_) => Future.value(Response('404 Not Found', 404)),
      );

      expect(
        () => commercioDocs.receivedReceipts(
          walletAddress: '',
          httpHelper: httpHelperMock,
        ),
        throwsException,
      );
    });
  });
}
