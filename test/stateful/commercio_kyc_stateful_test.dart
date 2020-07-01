import 'dart:io';

import 'package:commercio_ui/core/export.dart';
import 'package:commercio_ui/core/utils/export.dart';
import 'package:commercio_ui/entities/exceptions/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/utils/export.dart';

class FlutterSecureStorageMock extends Mock implements FlutterSecureStorage {}

class FlutterSecureStorageMethodsMock extends Mock
    implements FlutterSecureStorage {
  @override
  Future<void> write({
    @required String key,
    @required String value,
    IOSOptions iOptions,
    AndroidOptions aOptions,
  }) async {
    return Future.value();
  }

  @override
  Future<String> read({
    @required String key,
    IOSOptions iOptions,
    AndroidOptions aOptions,
  }) async {
    return Future.value();
  }

  @override
  Future<void> delete({
    @required String key,
    IOSOptions iOptions,
    AndroidOptions aOptions,
  }) {
    return Future.value();
  }
}

class HttpHelperMock extends Mock implements HttpHelper {}

void main() {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  final NetworkInfo correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'http://lcd-url',
  );
  const String correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  Wallet correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  String correctWalletAddress = correctWallet.bech32Address;
  final HttpHelper httpHelperMock = HttpHelperMock();
  FlutterSecureStorage secureStorageMethodsMock =
      FlutterSecureStorageMethodsMock();
  const String secureStorageKey = 'secure-storage-key';
  final correctCommercioAccount = StatefulCommercioAccount(
    storage: secureStorageMethodsMock,
    storageKey: secureStorageKey,
    networkInfo: correctNetworkInfo,
    httpHelper: httpHelperMock,
  );
  final commercioAccountWithoutWallet = StatefulCommercioAccount(
    storage: secureStorageMethodsMock,
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
  final correctFaucetInviteResponse =
      '{"tx_hash":"A4888CD3D2FC4C4F860A840604244F65363AB61B424248716101E653B6E2CA30"}';

  group('Constructor', () {
    test('Correct', () {
      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: correctCommercioAccount,
      );

      expect(commercioKyc.commercioAccount, correctCommercioAccount);
    });
  });

  group('Request faucet invite', () {
    test('Correct', () async {
      when(httpHelperMock.faucetRequest(
        path: HttpPath.invite,
        data: {
          'addr': correctWalletAddress,
        },
      )).thenAnswer(
        (_) => Future.value(Response(correctFaucetInviteResponse, 200)),
      );

      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: correctCommercioAccount,
      );
      await correctCommercioAccount.generateNewWallet(
        mnemonic: correctMnemonic,
      );

      final result = await commercioKyc.requestFaucetInvite();

      expect(result, correctFaucetInviteResponse);
    });

    test('No wallet in commercioAccount should throw an exception', () async {
      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expectLater(
        commercioKyc.requestFaucetInvite(),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });

  group('Buy membership', () {
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

      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: correctCommercioAccount,
      );
      await correctCommercioAccount.generateNewWallet(
        mnemonic: correctMnemonic,
      );

      final result = await commercioKyc.buyMembership(
        membershipType: MembershipType.BLACK,
      );

      expect(result.success, isTrue);
    });

    test('No wallet in commercioAccount should throw an exception', () async {
      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expectLater(
        () => commercioKyc.buyMembership(membershipType: MembershipType.BLACK),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });

  group('Invite member', () {
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

      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: correctCommercioAccount,
      );
      await correctCommercioAccount.generateNewWallet(
        mnemonic: correctMnemonic,
      );

      final result = await commercioKyc.inviteMember(
        invitedAddress: correctWalletAddress,
      );

      expect(result.success, isTrue);
    });

    test('No wallet in commercioAccount should throw an exception', () async {
      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expectLater(
        () => commercioKyc.inviteMember(invitedAddress: correctWalletAddress),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });
}
