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

class SecretStorageMock extends Mock implements SecretStorage {}

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

void main() {
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
  String correctWalletAddress = correctWallet.bech32Address;
  SecretStorage secretStorageMock = SecretStorageMock();
  SecretStorage secretStorageMethodsMock = SecretStorageMethodsMock();
  const String secureStorageKey = 'secure-storage-key';
  final HttpHelper httpHelperMock = HttpHelperMock();
  final correctCommercioAccount = StatefulCommercioAccount(
    storage: secretStorageMethodsMock,
    storageKey: secureStorageKey,
    networkInfo: correctNetworkInfo,
    httpHelper: httpHelperMock,
  );
  final commercioAccountWithoutWallet = StatefulCommercioAccount(
    storage: secretStorageMethodsMock,
    storageKey: secureStorageKey,
    networkInfo: correctNetworkInfo,
    httpHelper: httpHelperMock,
  );

  const String correctTxHash =
      'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  const String correctTransactionRaw =
      '{"height":"0","txhash":"$correctTxHash","raw_log":"[]"}';

  const String correctAccountDataRaw =
      '{"height":"70927","result":{"type":"cosmos-sdk/Account","value":{"address":"did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u33","coins":[{"denom":"ucommercio","amount":"99990300"}],"public_key":"did:com:pub1addwnpepq0efr3d09eja4utyghxte0n8xku33d3cnjmd3wjypfv4y9l540z66spk8xf","account_number":8,"sequence":1}}}';
  const String correctNodeInfoRaw =
      '{"node_info":{"protocol_version":{"p2p":"7","block":"10","app":"0"},"id":"b9a5b42aba9d5b962a4a9d478d364e9614f17b63","listen_addr":"tcp://0.0.0.0:26656","network":"devnet","version":"0.33.3","channels":"4020212223303800","moniker":"testnet-int-demo00","other":{"tx_index":"on","rpc_address":"tcp://0.0.0.0:26657"}},"application_version":{"name":"appnetwork","server_name":"cnd","client_name":"cndcli","version":"2.1.2","commit":"8d5916146ab76bb6a4059ab83c55d861d8c97130","build_tags":"netgo,ledger","go":"go version go1.14.4 linux/amd64"}}';
  final correctIdKeys = File('test_resources/id_keys.json').readAsStringSync();
  final keysObj = CommercioIdKeys.fromJson(jsonDecode(correctIdKeys));
  final correctDidDoc = DidDocument.fromJson(
    jsonDecode(
      File('test_resources/correct_did_document.json').readAsStringSync(),
    ),
  );
  final correctTumblerResponse =
      File('test_resources/correct_tumbler_response.json').readAsStringSync();
  final correctTumblerDdo =
      File('test_resources/correct_tumbler_ddo.json').readAsStringSync();

  group('Constructor', () {
    test('Correct', () {
      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
      );

      expect(commercioId.commercioAccount, correctCommercioAccount);
    });
  });

  group('Has keys', () {
    test('Correct', () async {
      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
      );

      expect(commercioId.hasKeys, isFalse);

      await commercioId.generateKeys();

      expect(commercioId.hasKeys, isTrue);
    });
  });

  group('Generate keys', () {
    test('Correct', () async {
      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
      );

      final keys = await commercioId.generateKeys();

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
      when(secretStorageMock.read(key: secureStorageKey)).thenAnswer(
        (_) => Future.value(correctIdKeys),
      );

      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
      );

      final keys = await commercioId.restoreKeys();

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

    test('No keys stored should throw an exception', () async {
      when(secretStorageMock.read(key: secureStorageKey)).thenAnswer(
        (_) => Future.value(null),
      );

      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
      );

      expectLater(
        () => commercioId.restoreKeys(),
        throwsA(isA<NoKeysFoundException>()),
      );
    });
  });

  group('Store keys', () {
    test('Correct', () async {
      when(secretStorageMock.write(
        key: secureStorageKey,
        value: correctIdKeys,
      )).thenAnswer((_) => Future.value());

      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
      );

      expectLater(
        () => commercioId.storeKeys(
          idKeys: CommercioIdKeys.fromJson(jsonDecode(correctIdKeys)),
        ),
        returnsNormally,
      );
    });
  });

  group('Delete keys', () {
    test('Correct', () async {
      when(secretStorageMock.delete(
        key: secureStorageKey,
      )).thenAnswer((_) => Future.value());

      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
      );

      expectLater(
        () => commercioId.deleteKeys(),
        returnsNormally,
      );
    });
  });

  group('Derivate did document', () {
    test('Correct', () async {
      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        idKeys: keysObj,
      );
      await correctCommercioAccount.generateNewWallet(
        mnemonic: correctMnemonic,
      );

      final didDoc = await commercioId.derivateDidDocument();

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

    test('Correct + service', () async {
      final didDocServiceType = 'didDocServiceType';
      final didDocServiceId = 'didDocServiceId';
      final didDocServiceEndpoint = 'didDocServiceEndpoint';

      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        idKeys: keysObj,
      );
      await correctCommercioAccount.generateNewWallet(
        mnemonic: correctMnemonic,
      );

      final didDoc = await commercioId.derivateDidDocument(
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

    test('No keys should throw an exception', () async {
      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
      );
      await correctCommercioAccount.generateNewWallet(
        mnemonic: correctMnemonic,
      );

      expect(
        () => commercioId.derivateDidDocument(),
        throwsA(isA<NoKeysFoundException>()),
      );
    });

    test('No wallet should throw an exception', () async {
      final commercioId = StatefulCommercioId(
        commercioAccount: commercioAccountWithoutWallet,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        idKeys: keysObj,
      );

      expect(
        () => commercioId.derivateDidDocument(),
        throwsA(isA<WalletNotFoundException>()),
      );
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

      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        idKeys: keysObj,
      );
      await correctCommercioAccount.generateNewWallet(
        mnemonic: correctMnemonic,
      );

      final result = await commercioId.setDidDocument();

      expect(result.success, isTrue);
    });

    test('Correct + didDocument', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );
      AccountDataRetrieval.client = MockClient(
        (_) => Future.value(Response(correctAccountDataRaw, 200)),
      );
      NodeInfoRetrieval.client = MockClient(
        (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      );

      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        idKeys: keysObj,
      );
      await correctCommercioAccount.generateNewWallet(
        mnemonic: correctMnemonic,
      );

      final result = await commercioId.setDidDocument(
        didDocument: correctDidDoc,
      );

      expect(result.success, isTrue);
    });

    test('No keys in memory should throw an exception', () async {
      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
      );
      await correctCommercioAccount.generateNewWallet();

      expectLater(
        () => commercioId.setDidDocument(),
        throwsA(isA<NoKeysFoundException>()),
      );
    });

    test('No wallet in commercioAccount should throw an exception', () async {
      final commercioId = StatefulCommercioId(
        commercioAccount: commercioAccountWithoutWallet,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        idKeys: keysObj,
      );

      expectLater(
        () => commercioId.setDidDocument(),
        throwsA(isA<WalletNotFoundException>()),
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
      when(httpHelperMock.getTumblerAddress()).thenAnswer(
        (_) => Future.value(correctWalletAddress),
      );

      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        idKeys: keysObj,
      );
      await correctCommercioAccount.generateNewWallet();

      final result = await commercioId.rechargeTumbler(
        rechargeAmount: const [StdCoin(denom: 'ucommercio', amount: '10')],
      );

      expect(result.success, isTrue);
    });

    test('No wallet in commercioAccount should throw an exception', () async {
      final commercioId = StatefulCommercioId(
        commercioAccount: commercioAccountWithoutWallet,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        idKeys: keysObj,
      );

      expect(
        () => commercioId.rechargeTumbler(
          rechargeAmount: const [StdCoin(denom: 'ucommercio', amount: '10')],
        ),
        throwsA(isA<WalletNotFoundException>()),
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
      when(httpHelperMock.getTumblerAddress()).thenAnswer(
        (_) => Future.value(correctWalletAddress),
      );

      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        idKeys: keysObj,
      );
      await correctCommercioAccount.generateNewWallet();

      final result = await commercioId.requestDidPowerUp(
        pairwiseAddress: correctWalletAddress,
        amount: const [StdCoin(denom: 'ucommercio', amount: '10')],
      );

      expect(result.success, isTrue);
    });

    test('No wallet in commercioAccount should throw an exception', () async {
      final commercioId = StatefulCommercioId(
        commercioAccount: commercioAccountWithoutWallet,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        idKeys: keysObj,
      );

      expectLater(
        () => commercioId.requestDidPowerUp(
          pairwiseAddress: correctWalletAddress,
          amount: const [StdCoin(denom: 'ucommercio', amount: '10')],
        ),
        throwsA(isA<WalletNotFoundException>()),
      );
    });

    test('No keys in memory should throw an exception', () async {
      final commercioId = StatefulCommercioId(
        commercioAccount: correctCommercioAccount,
        storage: secretStorageMock,
        storageKey: secureStorageKey,
      );
      await correctCommercioAccount.generateNewWallet();

      expectLater(
        () => commercioId.requestDidPowerUp(
          pairwiseAddress: correctWalletAddress,
          amount: const [StdCoin(denom: 'ucommercio', amount: '10')],
        ),
        throwsA(isA<NoKeysFoundException>()),
      );
    });
  });
}
