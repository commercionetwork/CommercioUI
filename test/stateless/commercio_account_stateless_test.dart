import 'dart:convert';
import 'dart:io';

import 'package:commercio_ui/core/staless/commercio_account_stateless.dart';
import 'package:commercio_ui/core/utils/utils.dart';
import 'package:commercio_ui/data/data.dart';
import 'package:commercio_ui/entities/account_request_response.dart';
import 'package:commercio_ui/entities/wallet_with_address.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/utils/export.dart';

class SecretStorageMock extends Mock implements SecretStorage {}

class HttpHelperMock extends Mock implements HttpHelper {}

void main() {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  SecretStorage secretStorageMock = SecretStorageMock();
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
  String correctWalletAddress = correctWallet.bech32Address;
  final HttpHelper httpHelperMock = HttpHelperMock();
  final String correctAccountBalanceRaw =
      '{"height":"69945","result":[{"denom": "ucommercio","amount": "100000000"}]}';
  final String wrongAddressAccountBalanceRaw =
      '{"error":"decoding bech32 failed: invalid bech32 string length 3"}';
  final List<StdCoin> correctAccountBalance = [
    StdCoin(denom: 'ucommercio', amount: '100000000'),
  ];
  const String correctTxHash =
      'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  const String correctTransactionRaw =
      '{"height":"0","txhash":"$correctTxHash","raw_log":"[]"}';
  const String wrongAddressTransactionRaw =
      '{"error":"decoding bech32 failed: checksum failed. Expected ukd8v7, got w39u33."}';
  const String correctAccountDataRaw =
      '{"height":"70927","result":{"type":"cosmos-sdk/Account","value":{"address":"did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u33","coins":[{"denom":"ucommercio","amount":"99990300"}],"public_key":"did:com:pub1addwnpepq0efr3d09eja4utyghxte0n8xku33d3cnjmd3wjypfv4y9l540z66spk8xf","account_number":8,"sequence":1}}}';
  const String correctNodeInfoRaw =
      '{"node_info":{"protocol_version":{"p2p":"7","block":"10","app":"0"},"id":"b9a5b42aba9d5b962a4a9d478d364e9614f17b63","listen_addr":"tcp://0.0.0.0:26656","network":"devnet","version":"0.33.3","channels":"4020212223303800","moniker":"testnet-int-demo00","other":{"tx_index":"on","rpc_address":"tcp://0.0.0.0:26657"}},"application_version":{"name":"appnetwork","server_name":"cnd","client_name":"cndcli","version":"2.1.2","commit":"8d5916146ab76bb6a4059ab83c55d861d8c97130","build_tags":"netgo,ledger","go":"go version go1.14.4 linux/amd64"}}';

  group('Mnemonic generation', () {
    test('Correct', () async {
      final mnemonic = await StatelessCommercioAccount.generateMnemonic();

      expect(mnemonic, isNotNull);

      // Should be 24 words separated by spaces
      expect(mnemonic.split(' ').length, 24);
    });
  });

  group('Store mnemonic', () {
    test('Correct', () {
      when(secretStorageMock.write(
              key: secureStorageKey, value: correctMnemonic))
          .thenAnswer((_) => Future.value());

      expectLater(
          () => StatelessCommercioAccount.storeMnemonic(
                secretStorage: secretStorageMock,
                secureStorageKey: secureStorageKey,
                mnemonic: correctMnemonic,
              ),
          returnsNormally);
    });

    test('Platform exception', () {
      final platformException = PlatformException(code: 'code');

      when(secretStorageMock.write(
              key: secureStorageKey, value: correctMnemonic))
          .thenThrow(platformException);

      expectLater(
          () => StatelessCommercioAccount.storeMnemonic(
                secretStorage: secretStorageMock,
                secureStorageKey: secureStorageKey,
                mnemonic: correctMnemonic,
              ),
          throwsA(platformException));
    });
  });

  group('Fetch mnemonic', () {
    test('Correct', () async {
      when(secretStorageMock.read(key: secureStorageKey))
          .thenAnswer((_) => Future.value(correctMnemonic));

      final fetchedMnemonic = await StatelessCommercioAccount.fetchMnemonic(
        secretStorage: secretStorageMock,
        secureStorageKey: secureStorageKey,
      );

      expect(fetchedMnemonic, correctMnemonic);
    });

    test('No mnemonic stored', () async {
      when(secretStorageMock.read(key: secureStorageKey))
          .thenAnswer((_) => Future.value(null));

      final fetchedMnemonic = await StatelessCommercioAccount.fetchMnemonic(
        secretStorage: secretStorageMock,
        secureStorageKey: secureStorageKey,
      );

      expect(fetchedMnemonic, isNull);
    });

    test('Platform exception', () {
      final platformException = PlatformException(code: 'code');

      when(secretStorageMock.read(key: secureStorageKey))
          .thenThrow(platformException);

      expectLater(
          () => StatelessCommercioAccount.fetchMnemonic(
                secretStorage: secretStorageMock,
                secureStorageKey: secureStorageKey,
              ),
          throwsA(platformException));
    });
  });

  group('Delete mnemonic', () {
    test('Correct', () async {
      when(secretStorageMock.delete(key: secureStorageKey))
          .thenAnswer((_) => Future.value());

      expectLater(
          () => StatelessCommercioAccount.deleteMnemonic(
                secretStorage: secretStorageMock,
                secureStorageKey: secureStorageKey,
              ),
          returnsNormally);
    });

    test('Platform exception', () {
      final platformException = PlatformException(code: 'code');

      when(secretStorageMock.delete(key: secureStorageKey))
          .thenThrow(platformException);

      expectLater(
        () => StatelessCommercioAccount.deleteMnemonic(
          secretStorage: secretStorageMock,
          secureStorageKey: secureStorageKey,
        ),
        throwsA(platformException),
      );
    });
  });

  group('Restore wallet', () {
    test('Correct', () async {
      when(secretStorageMock.read(key: secureStorageKey))
          .thenAnswer((_) => Future.value(correctMnemonic));

      final fetchedWallet = await StatelessCommercioAccount.restoreWallet(
        secretStorage: secretStorageMock,
        secureStorageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
      );

      expect(fetchedWallet, correctWallet);
    });

    test('No mnemonic already stored', () async {
      when(secretStorageMock.read(key: secureStorageKey))
          .thenAnswer((_) => Future.value(null));

      expectLater(
        () => StatelessCommercioAccount.restoreWallet(
          secretStorage: secretStorageMock,
          secureStorageKey: secureStorageKey,
          networkInfo: correctNetworkInfo,
        ),
        throwsException,
      );
    });
  });

  group('Generate new wallet', () {
    test('Correct', () async {
      final fetchedWallet = await StatelessCommercioAccount.generateNewWallet(
        networkInfo: correctNetworkInfo,
      );

      expect(fetchedWallet, isNotNull);
    });

    test('Correct with mnemonic', () async {
      final fetchedWallet = await StatelessCommercioAccount.generateNewWallet(
        networkInfo: correctNetworkInfo,
        mnemonic: correctMnemonic,
      );

      expect(fetchedWallet, correctWallet);
    });

    test('Correct with derivation path', () async {
      final fetchedWallet = await StatelessCommercioAccount.generateNewWallet(
        networkInfo: correctNetworkInfo,
        lastDerivationPathSegment: '1',
      );

      expect(fetchedWallet, isNotNull);
    });

    test('Wrong mnemonic format', () async {
      expectLater(
        () => StatelessCommercioAccount.generateNewWallet(
          networkInfo: correctNetworkInfo,
          mnemonic: '',
        ),
        throwsException,
      );
    });
  });

  group('Derive a new wallet', () {
    test('Correct', () async {
      final fetchedWallet = await StatelessCommercioAccount.deriveWallet(
        networkInfo: correctNetworkInfo,
        mnemonic: correctMnemonic,
      );

      expect(fetchedWallet, correctWallet);
    });

    test('Correct with derivation path', () async {
      final fetchedWallet = await StatelessCommercioAccount.deriveWallet(
        networkInfo: correctNetworkInfo,
        mnemonic: correctMnemonic,
        lastDerivationPathSegment: '1',
      );

      expect(fetchedWallet, isNotNull);
    });

    test('Wrong mnemonic format', () async {
      expectLater(
        () => StatelessCommercioAccount.deriveWallet(
          networkInfo: correctNetworkInfo,
          mnemonic: '',
        ),
        throwsException,
      );
    });
  });

  group('Generate pairwise wallet', () {
    test('Correct', () async {
      final fetchedWallet =
          await StatelessCommercioAccount.generatePairwiseWallet(
        networkInfo: correctNetworkInfo,
        mnemonic: correctMnemonic,
        lastDerivationPathSegment: '0',
      );

      expect(fetchedWallet, correctWallet);
    });

    test('Correct with determinism', () async {
      final fetchedWallet =
          await StatelessCommercioAccount.generatePairwiseWallet(
        networkInfo: correctNetworkInfo,
        mnemonic: correctMnemonic,
        lastDerivationPathSegment: '1',
      );

      expect(fetchedWallet, isNotNull);

      final fetchedWallet2 =
          await StatelessCommercioAccount.generatePairwiseWallet(
        networkInfo: correctNetworkInfo,
        mnemonic: correctMnemonic,
        lastDerivationPathSegment: '1',
      );

      expect(fetchedWallet2, fetchedWallet);
    });

    test('Wrong mnemonic format', () async {
      expectLater(
        () => StatelessCommercioAccount.generatePairwiseWallet(
          networkInfo: correctNetworkInfo,
          mnemonic: '',
          lastDerivationPathSegment: '1',
        ),
        throwsException,
      );
    });

    test('Wrong derivation path format', () async {
      expectLater(
        () => StatelessCommercioAccount.generatePairwiseWallet(
          networkInfo: correctNetworkInfo,
          mnemonic: correctMnemonic,
          lastDerivationPathSegment: '',
        ),
        throwsException,
      );
    });
  });

  group('Request free tokens', () {
    test('Correct', () async {
      when(httpHelperMock.faucetRequest(path: HttpPath.give, data: {
        'addr': correctWalletAddress,
        'amount': '100000000',
      })).thenAnswer((_) => Future.value(Response('', 200)));

      final response = await StatelessCommercioAccount.requestFreeTokens(
        walletAddress: correctWalletAddress,
        httpHelper: httpHelperMock,
      );

      expect(response, isA<AccountRequestSuccess>());
    });

    test('Correct request with bad message', () async {
      when(httpHelperMock.faucetRequest(path: HttpPath.give, data: {
        'addr': correctWalletAddress,
        'amount': '99999999999999',
      })).thenAnswer((_) => Future.value(Response('Too much amount', 200)));

      final response = await StatelessCommercioAccount.requestFreeTokens(
        walletAddress: correctWalletAddress,
        httpHelper: httpHelperMock,
        amount: '99999999999999',
      );

      expect(response, isA<AccountRequestSuccess>());
    });

    test('Wrong amount format', () async {
      final response = await StatelessCommercioAccount.requestFreeTokens(
        walletAddress: correctWalletAddress,
        httpHelper: httpHelperMock,
        amount: 'abc',
      );

      expect(response, isA<AccountRequestError>());
    });

    test('Exception in HttpHelper', () async {
      when(httpHelperMock.faucetRequest(path: HttpPath.give, data: {
        'addr': correctWalletAddress,
        'amount': '100000000',
      })).thenThrow(Exception());

      expectLater(
        () => StatelessCommercioAccount.requestFreeTokens(
          walletAddress: correctWalletAddress,
          httpHelper: httpHelperMock,
        ),
        throwsA(isA<AccountRequestError>()),
      );
    });

    test('Default httpHelper should be throw an exception', () async {
      expectLater(
        () => StatelessCommercioAccount.requestFreeTokens(
          walletAddress: correctWalletAddress,
        ),
        throwsA(isA<AccountRequestError>()),
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
          (_) => Future.value(Response(correctAccountBalanceRaw, 200)));

      final accountBalance =
          await StatelessCommercioAccount.checkAccountBalance(
        walletAddress: correctWalletAddress,
        httpHelper: httpHelperMock,
      );

      expect(accountBalance[0].amount, correctAccountBalance[0].amount);
      expect(accountBalance[0].denom, correctAccountBalance[0].denom);
    });

    test('Http 404 response', () async {
      when(
        httpHelperMock.getRequest(
          endpoint: HttpEndpoint.balance,
          walletAddress: correctWalletAddress,
        ),
      ).thenAnswer((_) => Future.value(Response('', 404)));

      expectLater(
        () => StatelessCommercioAccount.checkAccountBalance(
          walletAddress: correctWalletAddress,
          httpHelper: httpHelperMock,
        ),
        throwsException,
      );
    });

    test('Http error', () async {
      when(
        httpHelperMock.getRequest(
          endpoint: HttpEndpoint.balance,
          walletAddress: correctWalletAddress,
        ),
      ).thenAnswer((_) => throw Exception());

      expectLater(
        () => StatelessCommercioAccount.checkAccountBalance(
          walletAddress: correctWalletAddress,
          httpHelper: httpHelperMock,
        ),
        throwsA(isA<AccountRequestError>()),
      );
    });

    test('Invalid address', () async {
      when(
        httpHelperMock.getRequest(
          endpoint: HttpEndpoint.balance,
          walletAddress: correctWalletAddress,
        ),
      ).thenAnswer(
          (_) => Future.value(Response(wrongAddressAccountBalanceRaw, 500)));

      expectLater(
        () => StatelessCommercioAccount.checkAccountBalance(
          walletAddress: 'abc',
          httpHelper: httpHelperMock,
        ),
        throwsNoSuchMethodError,
      );
    });

    test('Default httpHelper should be throw an exception', () async {
      expect(
        () => StatelessCommercioAccount.checkAccountBalance(
          walletAddress: 'abc',
        ),
        throwsA(isA<AccountRequestError>()),
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

    test('Correct', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final response = await StatelessCommercioAccount.sendTokens(
        senderWallet: WalletWithAddress(
          wallet: correctWallet,
          address: correctWalletAddress,
        ),
        recipientAddress: correctWalletAddress,
        amount: correctAccountBalance,
      );

      expect(response.success, isTrue);
      expect(response.hash, correctTxHash);
    });

    test('Correct with fee', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(correctTransactionRaw, 200)),
      );

      final response = await StatelessCommercioAccount.sendTokens(
        senderWallet: WalletWithAddress(
          wallet: correctWallet,
          address: correctWalletAddress,
        ),
        recipientAddress: correctWalletAddress,
        amount: correctAccountBalance,
        feeAmount: correctAccountBalance,
        gas: '1000',
      );

      expect(response.success, isTrue);
      expect(response.hash, correctTxHash);
    });

    test('Wrong recipient address throws an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(wrongAddressTransactionRaw, 400)),
      );

      expectLater(
        () => StatelessCommercioAccount.sendTokens(
          senderWallet: WalletWithAddress(
            wallet: correctWallet,
            address: correctWalletAddress,
          ),
          recipientAddress: '',
          amount: correctAccountBalance,
        ),
        throwsException,
      );
    });

    test('Wrong sender address throws an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response(wrongAddressTransactionRaw, 400)),
      );

      expectLater(
        () => StatelessCommercioAccount.sendTokens(
          senderWallet: WalletWithAddress(
            wallet: correctWallet,
            address: '',
          ),
          recipientAddress: correctWalletAddress,
          amount: correctAccountBalance,
        ),
        throwsException,
      );
    });
  });

  group('Balance Full Result', () {
    test('Constructor', () {
      final height = '69945';
      final stdCoins = const [
        StdCoin(amount: '1000', denom: 'ucommercio'),
      ];

      final balanceFullResult = BalanceFullResult(
        height: height,
        stdCoins: stdCoins,
      );

      expect(balanceFullResult.height, height);
      expect(balanceFullResult.stdCoins, stdCoins);
    });

    test('Json', () {
      const stdCoins = [
        StdCoin(
          denom: 'ucommercio',
          amount: '100000000',
        ),
      ];

      final balanceFullResult = BalanceFullResult.fromJson(
        jsonDecode(correctAccountBalanceRaw),
      );

      expect(balanceFullResult.height, '69945');
      expect(balanceFullResult.stdCoins[0].denom, stdCoins[0].denom);
      expect(balanceFullResult.stdCoins[0].amount, stdCoins[0].amount);
    });
  });

  test('Compute Wallet', () {
    final computeWalletData = ComputeWalletData(
      mnemonic: correctMnemonic,
      networkInfo: correctNetworkInfo,
    );

    expect(computeWalletData, isNotNull);

    final wallet = computeWallet(computeWalletData);

    expect(wallet, correctWallet);

    final computeWalletData2 = ComputeWalletData(
      mnemonic: correctMnemonic,
      networkInfo: correctNetworkInfo,
      lastDerivationPathSegment: '1',
    );

    expect(computeWalletData2, isNotNull);

    final wallet2 = computeWallet(computeWalletData2);

    expect(wallet2, isNotNull);
  });

  test('Compute mnemonic', () {
    final computeMnemonicData = ComputeMnemonicData(256);
    final mnemonic = computeMnemonic(computeMnemonicData);

    expect(mnemonic, isNotNull);
    expect(mnemonic.split(' ').length, 24);
  });
}
