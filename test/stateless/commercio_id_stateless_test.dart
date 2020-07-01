import 'dart:convert';
import 'dart:io';

import 'package:commercio_ui/core/export.dart';
import 'package:commercio_ui/core/utils/export.dart';
import 'package:commercio_ui/entities/commercio_id_keys.dart';
import 'package:commercio_ui/entities/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/services.dart';
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

  FlutterSecureStorage secureStorageMock;
  final NetworkInfo correctNetworkInfo =
      NetworkInfo(bech32Hrp: 'bech32Hrp', lcdUrl: 'http://lcd-url');
  const String secureStorageKey = 'secure-storage-key';
  const String correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  Wallet correctWallet;
  String correctWalletAddress;
  WalletWithAddress correctWalletWithAddress;
  final HttpHelper httpHelperMock = HttpHelperMock();
  const String correctTxHash =
      'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  const String correctTransactionRaw =
      '{"height":"0","txhash":"$correctTxHash","raw_log":"[]"}';
  const String correctAccountDataRaw =
      '{"height":"70927","result":{"type":"cosmos-sdk/Account","value":{"address":"did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u33","coins":[{"denom":"ucommercio","amount":"99990300"}],"public_key":"did:com:pub1addwnpepq0efr3d09eja4utyghxte0n8xku33d3cnjmd3wjypfv4y9l540z66spk8xf","account_number":8,"sequence":1}}}';
  const String correctNodeInfoRaw =
      '{"node_info":{"protocol_version":{"p2p":"7","block":"10","app":"0"},"id":"b9a5b42aba9d5b962a4a9d478d364e9614f17b63","listen_addr":"tcp://0.0.0.0:26656","network":"devnet","version":"0.33.3","channels":"4020212223303800","moniker":"testnet-int-demo00","other":{"tx_index":"on","rpc_address":"tcp://0.0.0.0:26657"}},"application_version":{"name":"appnetwork","server_name":"cnd","client_name":"cndcli","version":"2.1.2","commit":"8d5916146ab76bb6a4059ab83c55d861d8c97130","build_tags":"netgo,ledger","go":"go version go1.14.4 linux/amd64"}}';
  final correctIdKeys = File('test_resources/id_keys.json').readAsStringSync();
  final correctDidDoc = DidDocument.fromJson(
    jsonDecode(
      File('test_resources/correct_did_document.json').readAsStringSync(),
    ),
  );
  final correctTumblerResponse =
      File('test_resources/correct_tumbler_response.json').readAsStringSync();
  final correctTumblerDdo =
      File('test_resources/correct_tumbler_ddo.json').readAsStringSync();

  setUp(() {
    secureStorageMock = FlutterSecureStorageMock();
    correctWallet =
        Wallet.derive(correctMnemonic.split(' '), correctNetworkInfo);
    correctWalletAddress = correctWallet.bech32Address;
    correctWalletWithAddress = WalletWithAddress(
      wallet: correctWallet,
      address: correctWalletAddress,
    );
  });

  group('Generate keys', () {
    test('Correct', () async {
      final keys = await StatelessCommercioId.generateKeys();

      expect(keys, isNotNull);

      final signatureKeys = keys.rsaSignatureKeyPair;

      expect(signatureKeys.privateKey, isA<RSAPrivateKey>());
      expect(signatureKeys.publicKey, isA<RSAPublicKey>());
      expect(signatureKeys.publicKey.getType(), 'RsaSignatureKey2018');

      final verificationKeys = keys.rsaVerificationPair;

      expect(verificationKeys.privateKey, isA<RSAPrivateKey>());
      expect(verificationKeys.publicKey, isA<RSAPublicKey>());
      expect(verificationKeys.publicKey.getType(), 'RsaVerificationKey2018');
    });
  });

  group('Restore keys', () {
    test('Correct', () async {
      when(secureStorageMock.read(key: secureStorageKey)).thenAnswer(
        (_) => Future.value(correctIdKeys),
      );

      final keys = await StatelessCommercioId.restoreKeys(
        secureStorage: secureStorageMock,
        secureStorageKey: secureStorageKey,
      );

      expect(keys, isNotNull);

      final signatureKeys = keys.rsaSignatureKeyPair;

      expect(signatureKeys.privateKey, isA<RSAPrivateKey>());
      expect(signatureKeys.publicKey, isA<RSAPublicKey>());
      expect(signatureKeys.publicKey.getType(), 'RsaSignatureKey2018');

      final verificationKeys = keys.rsaVerificationPair;

      expect(verificationKeys.privateKey, isA<RSAPrivateKey>());
      expect(verificationKeys.publicKey, isA<RSAPublicKey>());
      expect(verificationKeys.publicKey.getType(), 'RsaVerificationKey2018');
    });

    test('Platform exception', () async {
      final platformException = PlatformException(code: 'code');

      when(secureStorageMock.read(key: secureStorageKey))
          .thenThrow(platformException);

      expectLater(
        () => StatelessCommercioId.restoreKeys(
          secureStorage: secureStorageMock,
          secureStorageKey: secureStorageKey,
        ),
        throwsA(isA<PlatformException>()),
      );
    });
  });

  group('Store keys', () {
    test('Correct', () async {
      when(secureStorageMock.write(
        key: secureStorageKey,
        value: correctIdKeys,
      )).thenAnswer((_) => Future.value());

      expectLater(
        () => StatelessCommercioId.storeKeys(
          secureStorage: secureStorageMock,
          secureStorageKey: secureStorageKey,
          idKeys: CommercioIdKeys.fromJson(jsonDecode(correctIdKeys)),
        ),
        returnsNormally,
      );
    });

    test('Platform exception', () async {
      final platformException = PlatformException(code: 'code');

      final keysObj = CommercioIdKeys.fromJson(jsonDecode(correctIdKeys));

      when(secureStorageMock.write(
        key: secureStorageKey,
        value: jsonEncode(keysObj),
      )).thenThrow(platformException);

      expectLater(
        () => StatelessCommercioId.storeKeys(
          secureStorage: secureStorageMock,
          secureStorageKey: secureStorageKey,
          idKeys: keysObj,
        ),
        throwsA(isA<PlatformException>()),
      );
    });
  });

  group('Fetch keys', () {
    test('Correct', () async {
      when(secureStorageMock.read(key: secureStorageKey)).thenAnswer(
        (_) => Future.value(correctIdKeys),
      );

      final keys = await StatelessCommercioId.fetchKeys(
        secureStorage: secureStorageMock,
        secureStorageKey: secureStorageKey,
      );

      expect(keys, isNotNull);

      final signatureKeys = keys.rsaSignatureKeyPair;

      expect(signatureKeys.privateKey, isA<RSAPrivateKey>());
      expect(signatureKeys.publicKey, isA<RSAPublicKey>());
      expect(signatureKeys.publicKey.getType(), 'RsaSignatureKey2018');

      final verificationKeys = keys.rsaVerificationPair;

      expect(verificationKeys.privateKey, isA<RSAPrivateKey>());
      expect(verificationKeys.publicKey, isA<RSAPublicKey>());
      expect(verificationKeys.publicKey.getType(), 'RsaVerificationKey2018');
    });

    test('Platform exception', () async {
      final platformException = PlatformException(code: 'code');

      when(secureStorageMock.read(key: secureStorageKey))
          .thenThrow(platformException);

      expectLater(
        () => StatelessCommercioId.fetchKeys(
          secureStorage: secureStorageMock,
          secureStorageKey: secureStorageKey,
        ),
        throwsA(isA<PlatformException>()),
      );
    });
  });

  group('Delete keys', () {
    test('Correct', () async {
      when(secureStorageMock.delete(key: secureStorageKey))
          .thenAnswer((_) => Future.value());

      expectLater(
        () => StatelessCommercioId.deleteKeys(
          secureStorage: secureStorageMock,
          secureStorageKey: secureStorageKey,
        ),
        returnsNormally,
      );
    });

    test('Platform exception', () async {
      final platformException = PlatformException(code: 'code');

      when(secureStorageMock.delete(
        key: secureStorageKey,
      )).thenThrow(platformException);

      expectLater(
        () => StatelessCommercioId.deleteKeys(
          secureStorage: secureStorageMock,
          secureStorageKey: secureStorageKey,
        ),
        throwsA(isA<PlatformException>()),
      );
    });
  });

  group('Derive Did Document', () {
    final keysObj = CommercioIdKeys.fromJson(jsonDecode(correctIdKeys));

    test('Correct', () async {
      final didDoc = await StatelessCommercioId.derivateDidDocument(
        wallet: correctWallet,
        idKeys: keysObj,
      );

      expect(didDoc, isNotNull);
      expect(didDoc.context, correctDidDoc.context);
      expect(didDoc.id, correctDidDoc.id);
      expect(didDoc.publicKeys, correctDidDoc.publicKeys);
      expect(didDoc.proof.type, correctDidDoc.proof.type);
      expect(didDoc.proof.proofPurpose, correctDidDoc.proof.proofPurpose);
      expect(didDoc.proof.controller, correctDidDoc.proof.controller);
      expect(
        didDoc.proof.verificationMethod,
        correctDidDoc.proof.verificationMethod,
      );
      expect(didDoc.service, isNull);
    });

    test('Correct with service', () async {
      final didDocServiceType = 'didDocServiceType';
      final didDocServiceId = 'didDocServiceId';
      final didDocServiceEndpoint = 'didDocServiceEndpoint';

      final didDoc = await StatelessCommercioId.derivateDidDocument(
        wallet: correctWallet,
        idKeys: keysObj,
        service: [
          DidDocumentService(
            type: didDocServiceType,
            id: didDocServiceId,
            endpoint: didDocServiceEndpoint,
          ),
        ],
      );

      expect(didDoc, isNotNull);
      expect(didDoc.context, correctDidDoc.context);
      expect(didDoc.id, correctDidDoc.id);
      expect(didDoc.publicKeys, correctDidDoc.publicKeys);
      expect(didDoc.proof.type, correctDidDoc.proof.type);
      expect(didDoc.proof.proofPurpose, correctDidDoc.proof.proofPurpose);
      expect(didDoc.proof.controller, correctDidDoc.proof.controller);
      expect(
        didDoc.proof.verificationMethod,
        correctDidDoc.proof.verificationMethod,
      );
      expect(didDoc.service, correctDidDoc.service);
    });
  });

  group('Set Did Document', () {
    test('Correct', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response(correctAccountDataRaw, 200)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      );

      final result = await StatelessCommercioId.setDidDocument(
        didDocument: correctDidDoc,
        wallet: correctWallet,
      );

      expect(result.success, isTrue);
    });

    test('Correct + fee', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response(correctAccountDataRaw, 200)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      );

      final result = await StatelessCommercioId.setDidDocument(
        didDocument: correctDidDoc,
        wallet: correctWallet,
        fee: const StdFee(
          amount: [StdCoin(amount: '10', denom: 'ucommercio')],
          gas: '10',
        ),
      );

      expect(result.success, isTrue);
    });

    test('Http 404 response throws an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response('404', 404)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response(correctAccountDataRaw, 200)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      );

      expectLater(
        () => StatelessCommercioId.setDidDocument(
          didDocument: correctDidDoc,
          wallet: correctWallet,
        ),
        throwsException,
      );
    });

    test('Http 404 error in Account Data throws an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response('', 404)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      );

      expectLater(
        () => StatelessCommercioId.setDidDocument(
          didDocument: correctDidDoc,
          wallet: correctWallet,
        ),
        throwsException,
      );
    });

    test('Http 404 error in Node Data throws an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response(correctAccountDataRaw, 200)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response('404', 404)),
      );

      expectLater(
        () => StatelessCommercioId.setDidDocument(
          didDocument: correctDidDoc,
          wallet: correctWallet,
        ),
        throwsException,
      );
    });
  });

  group('Recharge tumbler', () {
    test('Correct', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response(correctAccountDataRaw, 200)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      );
      when(httpHelperMock.getGovernmentAddress()).thenAnswer(
        (_) => Future.value(correctWalletAddress),
      );

      final result = await StatelessCommercioId.rechargeTumbler(
        walletWithAddress: correctWalletWithAddress,
        rechargeAmount: const [StdCoin(denom: 'ucommercio', amount: '10')],
        httpHelper: httpHelperMock,
      );

      expect(result.success, isTrue);
    });

    test('Correct + fee', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response(correctAccountDataRaw, 200)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      );
      when(httpHelperMock.getGovernmentAddress()).thenAnswer(
        (_) => Future.value(correctWalletAddress),
      );

      final result = await StatelessCommercioId.rechargeTumbler(
        walletWithAddress: correctWalletWithAddress,
        rechargeAmount: const [StdCoin(denom: 'ucommercio', amount: '10')],
        httpHelper: httpHelperMock,
        rechargeFee: const [StdCoin(denom: 'ucommercio', amount: '10')],
      );

      expect(result.success, isTrue);
    });

    test('Correct + fee + gas', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response(correctAccountDataRaw, 200)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      );
      when(httpHelperMock.getGovernmentAddress()).thenAnswer(
        (_) => Future.value(correctWalletAddress),
      );

      final result = await StatelessCommercioId.rechargeTumbler(
        walletWithAddress: correctWalletWithAddress,
        rechargeAmount: const [StdCoin(denom: 'ucommercio', amount: '10')],
        httpHelper: httpHelperMock,
        rechargeFee: const [StdCoin(denom: 'ucommercio', amount: '10')],
        rechargeGas: '10',
      );

      expect(result.success, isTrue);
    });

    test('Http 404 response throws an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response('404', 404)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response(correctAccountDataRaw, 200)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      );
      when(httpHelperMock.getGovernmentAddress()).thenAnswer(
        (_) => Future.value(correctWalletAddress),
      );

      expectLater(
        () => StatelessCommercioId.rechargeTumbler(
          walletWithAddress: correctWalletWithAddress,
          rechargeAmount: const [StdCoin(denom: 'ucommercio', amount: '10')],
          httpHelper: httpHelperMock,
        ),
        throwsException,
      );
    });

    test('Http 404 error in Account Data throws an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response('', 404)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      );
      when(httpHelperMock.getGovernmentAddress()).thenAnswer(
        (_) => Future.value(correctWalletAddress),
      );

      expectLater(
        () => StatelessCommercioId.rechargeTumbler(
          walletWithAddress: correctWalletWithAddress,
          rechargeAmount: const [StdCoin(denom: 'ucommercio', amount: '10')],
          httpHelper: httpHelperMock,
        ),
        throwsException,
      );
    });

    test('Http 404 error in Node Data throws an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response(correctAccountDataRaw, 200)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response('404', 404)),
      );
      when(httpHelperMock.getGovernmentAddress()).thenAnswer(
        (_) => Future.value(correctWalletAddress),
      );

      expectLater(
        () => StatelessCommercioId.rechargeTumbler(
          walletWithAddress: correctWalletWithAddress,
          rechargeAmount: const [StdCoin(denom: 'ucommercio', amount: '10')],
          httpHelper: httpHelperMock,
        ),
        throwsException,
      );
    });

    test('Default httpHelper should be throw an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response(correctAccountDataRaw, 200)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response('404', 404)),
      );
      when(httpHelperMock.getGovernmentAddress()).thenAnswer(
        (_) => Future.value(correctWalletAddress),
      );

      expectLater(
        () => StatelessCommercioId.rechargeTumbler(
          walletWithAddress: correctWalletWithAddress,
          rechargeAmount: const [StdCoin(denom: 'ucommercio', amount: '10')],
        ),
        throwsA(isA<SocketException>()),
      );
    });
  });

  group('Request Did PowerUp', () {
    final keysObj = CommercioIdKeys.fromJson(jsonDecode(correctIdKeys));

    test('Correct', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );
      Network.client = MockClient((request) {
        if (request.url.path.contains('government')) {
          return Future.value(Response(correctTumblerResponse, 200));
        }

        if (request.url.path.contains('identities')) {
          return Future.value(Response(correctTumblerDdo, 200));
        }

        return null;
      });
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response(correctAccountDataRaw, 200)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      );
      when(httpHelperMock.getGovernmentAddress()).thenAnswer(
        (_) => Future.value(correctWalletAddress),
      );

      final result = await StatelessCommercioId.requestDidPowerUp(
        senderWallet: correctWallet,
        pairwiseAddress: correctWalletAddress,
        amount: const [StdCoin(denom: 'ucommercio', amount: '10')],
        rsaSignaturePrivateKey: keysObj.rsaSignatureKeyPair.privateKey,
      );

      expect(result.success, isTrue);
    });
  });
}