import 'dart:io';

import 'package:commercio_ui/core/staless/commercio_account_stateless.dart';
import 'package:commercio_ui/core/stateful/commercio_account_stateful.dart';
import 'package:commercio_ui/core/utils/utils.dart';
import 'package:commercio_ui/data/data.dart';
import 'package:commercio_ui/entities/account_request_response.dart';
import 'package:commercio_ui/entities/exceptions/exceptions.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
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
  TestWidgetsFlutterBinding.ensureInitialized();

  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  SecretStorage secretStorageMock = SecretStorageMock();
  SecretStorage secretStorageMethodsMock = SecretStorageMethodsMock();
  final NetworkInfo correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'lcdUrl',
  );
  const String secureStorageKey = 'secure-storage-key';
  const String correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  Wallet correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  final HttpHelper httpHelperMock = HttpHelperMock();
  String correctWalletAddress = correctWallet.bech32Address;
  final String correctAccountBalanceRaw =
      '{"height":"69945","result":[{"denom": "ucommercio","amount": "100000000"}]}';
  const String correctTxHash =
      'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  const String correctTransactionRaw =
      '{"height":"0","txhash":"$correctTxHash","raw_log":"[]"}';
  const String correctAccountDataRaw =
      '{"height":"70927","result":{"type":"cosmos-sdk/Account","value":{"address":"did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u33","coins":[{"denom":"ucommercio","amount":"99990300"}],"public_key":"did:com:pub1addwnpepq0efr3d09eja4utyghxte0n8xku33d3cnjmd3wjypfv4y9l540z66spk8xf","account_number":8,"sequence":1}}}';
  const String correctNodeInfoRaw =
      '{"node_info":{"protocol_version":{"p2p":"7","block":"10","app":"0"},"id":"b9a5b42aba9d5b962a4a9d478d364e9614f17b63","listen_addr":"tcp://0.0.0.0:26656","network":"devnet","version":"0.33.3","channels":"4020212223303800","moniker":"testnet-int-demo00","other":{"tx_index":"on","rpc_address":"tcp://0.0.0.0:26657"}},"application_version":{"name":"appnetwork","server_name":"cnd","client_name":"cndcli","version":"2.1.2","commit":"8d5916146ab76bb6a4059ab83c55d861d8c97130","build_tags":"netgo,ledger","go":"go version go1.14.4 linux/amd64"}}';

  group('Constructor', () {
    test('Default', () async {
      final commercioAccount = StatefulCommercioAccount();

      expect(commercioAccount.secureStorageKey, 'commercio-account-mnemonic');
      expect(commercioAccount.storage, isA<SecretStorage>());
      expect(commercioAccount.networkInfo.bech32Hrp, 'did:com:');
      expect(commercioAccount.networkInfo.lcdUrl, 'http://localhost:1317');
    });
  });

  group('Has wallet', () {
    test('Newly created account does not have a wallet in memory', () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      expect(commercioAccount.hasWallet, isFalse);
    });

    test('Account have a wallet after generating it', () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      await commercioAccount.generateNewWallet();

      expect(commercioAccount.hasWallet, isTrue);
    });

    test('Account have a wallet after successfully restoring it', () async {
      when(secretStorageMock.read(key: secureStorageKey))
          .thenAnswer((_) => Future.value(correctMnemonic));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      await commercioAccount.restoreWallet();

      expect(commercioAccount.hasWallet, isTrue);
    });
  });

  group('Has mnemonic', () {
    test('Newly created account does not have mnemonic in memory', () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      expect(commercioAccount.hasMnemonic, isFalse);
    });

    test('Account have mnemonic after generating it', () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      await commercioAccount.generateNewWallet();

      expect(commercioAccount.hasMnemonic, isTrue);
    });

    test('Account have mnemonic after successfully restoring it', () async {
      when(secretStorageMock.read(key: secureStorageKey))
          .thenAnswer((_) => Future.value(correctMnemonic));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      await commercioAccount.restoreWallet();

      expect(commercioAccount.hasMnemonic, isTrue);
    });
  });

  group('Has wallet address', () {
    test('Newly created account does not have a wallet address in memory',
        () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      expect(commercioAccount.hasWalletAddress, isFalse);
    });

    test('Account have a wallet address after generating it', () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      await commercioAccount.generateNewWallet();

      expect(commercioAccount.hasWalletAddress, isTrue);
    });

    test('Account have a wallet address after successfully restoring it',
        () async {
      when(secretStorageMock.read(key: secureStorageKey))
          .thenAnswer((_) => Future.value(correctMnemonic));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      await commercioAccount.restoreWallet();

      expect(commercioAccount.hasWalletAddress, isTrue);
    });
  });

  group('Network info set & get', () {
    test('Set a new network info reset the wallet and mnemonic', () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      await commercioAccount.generateNewWallet();

      expect(commercioAccount.hasWallet, isTrue);
      expect(commercioAccount.hasWalletAddress, isTrue);
      expect(commercioAccount.hasMnemonic, isTrue);

      commercioAccount.networkInfo = NetworkInfo(
        bech32Hrp: 'newBench32Hrp',
        lcdUrl: 'http://new-lcd-url/',
      );

      expect(commercioAccount.hasWallet, isFalse);
      expect(commercioAccount.hasWalletAddress, isFalse);
      expect(commercioAccount.hasMnemonic, isTrue);
    });
  });

  group('Generate mnemonic', () {
    final commercioAccount = StatefulCommercioAccount(
      storage: secretStorageMock,
      storageKey: secureStorageKey,
      networkInfo: correctNetworkInfo,
      httpHelper: httpHelperMock,
    );

    test('Correct', () async {
      final mnemonic = await commercioAccount.generateMnemonic();

      expect(mnemonic, isNotNull);
      expect(mnemonic.split(' ').length, 24);
    });
  });

  group('Store mnemonic', () {
    test('Correct', () async {
      when(secretStorageMock.write(
        key: secureStorageKey,
        value: correctMnemonic,
      )).thenAnswer((_) => Future.value());

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );
      final mnemonic = await commercioAccount.generateMnemonic();

      expect(mnemonic, isNotNull);

      expect(() => commercioAccount.storeMnemonic(), returnsNormally);
    });

    test('Correct with custom mnemonic', () async {
      when(secretStorageMock.write(
        key: secureStorageKey,
        value: correctMnemonic,
      )).thenAnswer((_) => Future.value());

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );
      final mnemonic = await StatelessCommercioAccount.generateMnemonic();

      expect(mnemonic, isNotNull);

      expect(
        () => commercioAccount.storeMnemonic(mnemonic: mnemonic),
        returnsNormally,
      );
    });

    test('No mnemonic should throw an exception', () async {
      when(secretStorageMock.write(
        key: secureStorageKey,
        value: correctMnemonic,
      )).thenAnswer((_) => Future.value());

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      expectLater(
        () => commercioAccount.storeMnemonic(),
        throwsA(isA<Exception>()),
      );
    });

    test('Platform error should throw an exception', () async {
      when(
        secretStorageMock.write(key: secureStorageKey, value: correctMnemonic),
      ).thenThrow(PlatformException(code: 'code'));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      expectLater(
        () => commercioAccount.storeMnemonic(),
        throwsException,
      );
    });
  });

  group('Fetch mnemonic', () {
    test('Correct', () async {
      when(secretStorageMock.read(key: secureStorageKey))
          .thenAnswer((_) => Future.value(correctMnemonic));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      final mnemonic = await commercioAccount.fetchMnemonic();

      expect(mnemonic, correctMnemonic);
    });

    test('No mnemonic saved should return null', () async {
      when(secretStorageMock.read(
        key: secureStorageKey,
      )).thenAnswer((_) => Future.value(null));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      final mnemonic = await commercioAccount.fetchMnemonic();

      expect(mnemonic, isNull);
    });

    test('Platform error should throw an exception', () async {
      when(
        secretStorageMock.read(key: secureStorageKey),
      ).thenThrow(PlatformException(code: 'code'));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      expectLater(
        () => commercioAccount.fetchMnemonic(),
        throwsException,
      );
    });
  });

  group('Delete mnemonic', () {
    test('Correct', () async {
      when(secretStorageMock.delete(key: secureStorageKey))
          .thenAnswer((_) => Future.value());

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      expect(
        () => commercioAccount.deleteMnemonic(),
        returnsNormally,
      );
    });

    test('Platform error should throw an exception', () async {
      when(
        secretStorageMock.delete(key: secureStorageKey),
      ).thenThrow(PlatformException(code: 'code'));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      expectLater(
        () => commercioAccount.deleteMnemonic(),
        throwsException,
      );
    });
  });

  group('Restore wallet', () {
    test('Correct', () async {
      when(secretStorageMock.read(key: secureStorageKey))
          .thenAnswer((_) => Future.value(correctMnemonic));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      final wallet = await commercioAccount.restoreWallet();

      expect(wallet, correctWallet);
    });

    test('No mnemonic stored should throw an exception', () async {
      when(secretStorageMock.read(key: secureStorageKey))
          .thenAnswer((_) => Future.value(null));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      expectLater(
        () => commercioAccount.restoreWallet(),
        throwsA(isA<MnemonicNotStoredException>()),
      );
    });
  });

  group('Generate new wallet', () {
    test('Correct', () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      final wallet = await commercioAccount.generateNewWallet();

      expect(wallet, isNotNull);
      expect(wallet.bech32Address, isNotNull);
    });

    test('Correct + mnemonic', () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      final wallet = await commercioAccount.generateNewWallet(
        mnemonic: correctMnemonic,
      );

      expect(wallet, correctWallet);
    });

    test('Correct + mnemonic + lastDerivationPath should be deterministic',
        () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      final wallet = await commercioAccount.generateNewWallet(
        mnemonic: correctMnemonic,
        lastDerivationPathSegment: '1',
      );

      expect(wallet, isNotNull);

      final walletAgain = await commercioAccount.generateNewWallet(
        mnemonic: correctMnemonic,
        lastDerivationPathSegment: '1',
      );

      expect(walletAgain, wallet);
    });
  });

  group('Generate pairwise wallet', () {
    test('Correct', () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      // Make sure mnemonic is not null
      await commercioAccount.generateMnemonic();

      final pairwise = await commercioAccount.generatePairwiseWallet(
        lastDerivationPathSegment: '1',
      );

      expect(pairwise, isNotNull);

      final pairwiseAgain = await commercioAccount.generatePairwiseWallet(
        lastDerivationPathSegment: '1',
      );

      expect(pairwiseAgain, pairwise);
    });

    test('No mnemonic should throw an exception', () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: null,
        httpHelper: httpHelperMock,
      );

      expectLater(
        () => commercioAccount.generatePairwiseWallet(
          lastDerivationPathSegment: '1',
        ),
        throwsA(isA<MnemonicNotStoredException>()),
      );
    });
  });

  group('Request free tokens', () {
    test('Correct', () async {
      when(httpHelperMock.faucetRequest(
        path: HttpPath.give,
        data: {
          'addr': correctWalletAddress,
          'amount': '100000000',
        },
      )).thenAnswer((_) => Future.value(Response('', 200)));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      await commercioAccount.generateNewWallet(mnemonic: correctMnemonic);

      expect(commercioAccount.wallet, correctWallet);

      final response = await commercioAccount.requestFreeTokens();

      expect(response, isA<AccountRequestSuccess>());
    });

    test('Correct + amount', () async {
      when(httpHelperMock.faucetRequest(
        path: HttpPath.give,
        data: {
          'addr': correctWalletAddress,
          'amount': '10',
        },
      )).thenAnswer((_) => Future.value(Response('', 200)));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      await commercioAccount.generateNewWallet(mnemonic: correctMnemonic);

      expect(commercioAccount.wallet, correctWallet);

      final response = await commercioAccount.requestFreeTokens(amount: '10');

      expect(response, isA<AccountRequestSuccess>());
    });

    test('No wallet should throw an exception', () async {
      when(httpHelperMock.faucetRequest(
        path: HttpPath.give,
        data: {
          'addr': correctWalletAddress,
          'amount': '100000000',
        },
      )).thenAnswer((_) => Future.value(Response('', 200)));

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      expectLater(
        () => commercioAccount.requestFreeTokens(),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });

  group('Check account balance', () {
    test('Correct', () async {
      when(
        httpHelperMock.getRequest(
          endpoint: HttpEndpoint.balance,
          walletAddress: correctWalletAddress,
        ),
      ).thenAnswer(
        (_) => Future.value(Response(correctAccountBalanceRaw, 200)),
      );

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      await commercioAccount.generateNewWallet(mnemonic: correctMnemonic);

      final balance = await commercioAccount.checkAccountBalance();

      expect(balance.isNotEmpty, isTrue);
    });

    test('No wallet should throw an exception', () async {
      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      expectLater(
        () => commercioAccount.checkAccountBalance(),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });

  group('Send tokens', () {
    AccountDataRetrieval.client = MockClient(
      (_) => Future.value(Response(correctAccountDataRaw, 200)),
    );
    NodeInfoRetrieval.client = MockClient(
      (_) => Future.value(Response(correctNodeInfoRaw, 200)),
    );
    final correctAmount = const StdCoin(denom: 'denom', amount: '10');

    test('Correct', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      await commercioAccount.generateNewWallet(mnemonic: correctMnemonic);

      final result = await commercioAccount.sendTokens(
        recipientAddress: correctWalletAddress,
        amount: [correctAmount],
      );

      expect(result.success, isTrue);
    });

    test('Correct + fee + gas', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      await commercioAccount.generateNewWallet(mnemonic: correctMnemonic);

      final result = await commercioAccount.sendTokens(
        recipientAddress: correctWalletAddress,
        amount: [correctAmount],
        feeAmount: [correctAmount],
        gas: '100',
      );

      expect(result.success, isTrue);
    });

    test('No wallet should throw an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final commercioAccount = StatefulCommercioAccount(
        storage: secretStorageMethodsMock,
        storageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
        httpHelper: httpHelperMock,
      );

      expectLater(
        () => commercioAccount.sendTokens(
          recipientAddress: correctWalletAddress,
          amount: [correctAmount],
        ),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });
}
