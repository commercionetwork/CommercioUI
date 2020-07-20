import 'dart:convert';
import 'dart:io';

import 'package:commercio_ui/src/core/staless/commercio_account_stateless.dart';
import 'package:commercio_ui/src/core/utils/utils.dart';
import 'package:commercio_ui/src/data/data.dart';
import 'package:commercio_ui/src/entities/account_request_response.dart';
// import 'package:commercio_ui/entities/wallet_with_address.dart';
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

  const commercioAccount = StatelessCommercioAccount();
  final secretStorageMock = SecretStorageMock();
  final correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'lcdUrl',
  );
  const secureStorageKey = 'secure-storage-key';
  const correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  final correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  final correctWalletAddress = correctWallet.bech32Address;
  final httpHelperMock = HttpHelperMock();
  final correctAccountBalanceRaw =
      '{"height":"69945","result":[{"denom": "ucommercio","amount": "100000000"}]}';
  final wrongAddressAccountBalanceRaw =
      '{"error":"decoding bech32 failed: invalid bech32 string length 3"}';
  final correctAccountBalance = [
    StdCoin(denom: 'ucommercio', amount: '100000000'),
  ];
  // const correctTxHash =
  //     'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  // const correctTransactionRaw =
  //     '{"height":"0","txhash":"$correctTxHash","raw_log":"[]"}';
  // const wrongAddressTransactionRaw =
  //     '{"error":"decoding bech32 failed: checksum failed. Expected ukd8v7, got w39u33."}';
  const correctAccountDataRaw =
      '{"height":"70927","result":{"type":"cosmos-sdk/Account","value":{"address":"did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u33","coins":[{"denom":"ucommercio","amount":"99990300"}],"public_key":"did:com:pub1addwnpepq0efr3d09eja4utyghxte0n8xku33d3cnjmd3wjypfv4y9l540z66spk8xf","account_number":8,"sequence":1}}}';
  const correctNodeInfoRaw =
      '{"node_info":{"protocol_version":{"p2p":"7","block":"10","app":"0"},"id":"b9a5b42aba9d5b962a4a9d478d364e9614f17b63","listen_addr":"tcp://0.0.0.0:26656","network":"devnet","version":"0.33.3","channels":"4020212223303800","moniker":"testnet-int-demo00","other":{"tx_index":"on","rpc_address":"tcp://0.0.0.0:26657"}},"application_version":{"name":"appnetwork","server_name":"cnd","client_name":"cndcli","version":"2.1.2","commit":"8d5916146ab76bb6a4059ab83c55d861d8c97130","build_tags":"netgo,ledger","go":"go version go1.14.4 linux/amd64"}}';

  group('Mnemonic generation', () {
    test('Correct', () async {
      final mnemonic = await commercioAccount.generateMnemonic();

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
          () => commercioAccount.storeMnemonic(
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
          () => commercioAccount.storeMnemonic(
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

      final fetchedMnemonic = await commercioAccount.fetchMnemonic(
        secretStorage: secretStorageMock,
        secureStorageKey: secureStorageKey,
      );

      expect(fetchedMnemonic, correctMnemonic);
    });

    test('No mnemonic stored', () async {
      when(secretStorageMock.read(key: secureStorageKey))
          .thenAnswer((_) => Future.value(null));

      final fetchedMnemonic = await commercioAccount.fetchMnemonic(
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
          () => commercioAccount.fetchMnemonic(
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

      expect(
          () => commercioAccount.deleteMnemonic(
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
        () => commercioAccount.deleteMnemonic(
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

      final fetchedWallet = await commercioAccount.restoreWallet(
        secretStorage: secretStorageMock,
        secureStorageKey: secureStorageKey,
        networkInfo: correctNetworkInfo,
      );

      expect(fetchedWallet, correctWallet);
    });

    test('No mnemonic already stored', () async {
      when(secretStorageMock.read(key: secureStorageKey))
          .thenAnswer((_) => Future.value(null));

      expect(
        () => commercioAccount.restoreWallet(
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
      final fetchedWallet = await commercioAccount.generateNewWallet(
        networkInfo: correctNetworkInfo,
      );

      expect(fetchedWallet, isNotNull);
    });

    test('Correct with mnemonic', () async {
      final fetchedWallet = await commercioAccount.generateNewWallet(
        networkInfo: correctNetworkInfo,
        mnemonic: correctMnemonic,
      );

      expect(fetchedWallet, correctWallet);
    });

    test('Correct with derivation path', () async {
      final fetchedWallet = await commercioAccount.generateNewWallet(
        networkInfo: correctNetworkInfo,
        lastDerivationPathSegment: '1',
      );

      expect(fetchedWallet, isNotNull);
    });

    test('Wrong mnemonic format', () async {
      expect(
        () => commercioAccount.generateNewWallet(
          networkInfo: correctNetworkInfo,
          mnemonic: '',
        ),
        throwsException,
      );
    });
  });

  group('Derive a new wallet', () {
    test('Correct', () async {
      final fetchedWallet = await commercioAccount.deriveWallet(
        networkInfo: correctNetworkInfo,
        mnemonic: correctMnemonic,
      );

      expect(fetchedWallet, correctWallet);
    });

    test('Correct with derivation path', () async {
      final fetchedWallet = await commercioAccount.deriveWallet(
        networkInfo: correctNetworkInfo,
        mnemonic: correctMnemonic,
        lastDerivationPathSegment: '1',
      );

      expect(fetchedWallet, isNotNull);
    });

    test('Wrong mnemonic format', () async {
      expect(
        () => commercioAccount.deriveWallet(
          networkInfo: correctNetworkInfo,
          mnemonic: '',
        ),
        throwsException,
      );
    });
  });

  group('Generate pairwise wallet', () {
    test('Correct', () async {
      final fetchedWallet = await commercioAccount.generatePairwiseWallet(
        networkInfo: correctNetworkInfo,
        mnemonic: correctMnemonic,
        lastDerivationPathSegment: '0',
      );

      expect(fetchedWallet, correctWallet);
    });

    test('Correct with determinism', () async {
      final fetchedWallet = await commercioAccount.generatePairwiseWallet(
        networkInfo: correctNetworkInfo,
        mnemonic: correctMnemonic,
        lastDerivationPathSegment: '1',
      );

      expect(fetchedWallet, isNotNull);

      final fetchedWallet2 = await commercioAccount.generatePairwiseWallet(
        networkInfo: correctNetworkInfo,
        mnemonic: correctMnemonic,
        lastDerivationPathSegment: '1',
      );

      expect(fetchedWallet2, fetchedWallet);
    });

    test('Wrong mnemonic format', () async {
      expect(
        () => commercioAccount.generatePairwiseWallet(
          networkInfo: correctNetworkInfo,
          mnemonic: '',
          lastDerivationPathSegment: '1',
        ),
        throwsException,
      );
    });

    test('Wrong derivation path format', () async {
      expect(
        () => commercioAccount.generatePairwiseWallet(
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

      final response = await commercioAccount.requestFreeTokens(
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

      final response = await commercioAccount.requestFreeTokens(
        walletAddress: correctWalletAddress,
        httpHelper: httpHelperMock,
        amount: '99999999999999',
      );

      expect(response, isA<AccountRequestSuccess>());
    });

    test('Wrong amount format', () async {
      final response = await commercioAccount.requestFreeTokens(
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

      expect(
        () => commercioAccount.requestFreeTokens(
          walletAddress: correctWalletAddress,
          httpHelper: httpHelperMock,
        ),
        throwsA(isA<AccountRequestError>()),
      );
    });

    test('Default httpHelper should be throw an exception', () async {
      expect(
        () => commercioAccount.requestFreeTokens(
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

      final accountBalance = await commercioAccount.checkAccountBalance(
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

      expect(
        () => commercioAccount.checkAccountBalance(
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

      expect(
        () => commercioAccount.checkAccountBalance(
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

      expect(
        () => commercioAccount.checkAccountBalance(
          walletAddress: 'abc',
          httpHelper: httpHelperMock,
        ),
        throwsNoSuchMethodError,
      );
    });

    test('Default httpHelper should be throw an exception', () async {
      expect(
        () => commercioAccount.checkAccountBalance(
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

    // test('Correct', () async {
    //   TxSender.client = MockClient(
    //     (_) => Future.value(Response(correctTransactionRaw, 200)),
    //   );

    //   final response = await commercioAccount.sendTokens(
    //     senderWallet: WalletWithAddress(
    //       wallet: correctWallet,
    //       address: correctWalletAddress,
    //     ),
    //     recipientAddress: correctWalletAddress,
    //     amount: correctAccountBalance,
    //   );

    //   expect(response.success, isTrue);
    //   expect(response.hash, correctTxHash);
    // });

    // test('Correct with fee', () async {
    //   TxSender.client = MockClient(
    //     (_) => Future.value(Response(correctTransactionRaw, 200)),
    //   );

    //   final response = await commercioAccount.sendTokens(
    //     senderWallet: WalletWithAddress(
    //       wallet: correctWallet,
    //       address: correctWalletAddress,
    //     ),
    //     recipientAddress: correctWalletAddress,
    //     amount: correctAccountBalance,
    //   );

    //   expect(response.success, isTrue);
    //   expect(response.hash, correctTxHash);
    // });

    // test('Wrong recipient address throws an exception', () async {
    //   TxSender.client = MockClient(
    //     (_) => Future.value(Response(wrongAddressTransactionRaw, 400)),
    //   );

    //   expect(
    //     () => commercioAccount.sendTokens(
    //       senderWallet: WalletWithAddress(
    //         wallet: correctWallet,
    //         address: correctWalletAddress,
    //       ),
    //       recipientAddress: '',
    //       amount: correctAccountBalance,
    //     ),
    //     throwsException,
    //   );
    // });

    // test('Wrong sender address throws an exception', () async {
    //   TxSender.client = MockClient(
    //     (_) => Future.value(Response(wrongAddressTransactionRaw, 400)),
    //   );

    //   expect(
    //     () => commercioAccount.sendTokens(
    //       senderWallet: WalletWithAddress(
    //         wallet: correctWallet,
    //         address: '',
    //       ),
    //       recipientAddress: correctWalletAddress,
    //       amount: correctAccountBalance,
    //     ),
    //     throwsException,
    //   );
    // });
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
