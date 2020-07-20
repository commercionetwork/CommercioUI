import 'dart:io';

import 'package:commercio_ui/core/core.dart';
import 'package:commercio_ui/core/utils/utils.dart';
import 'package:commercio_ui/data/data.dart';
import 'package:commercio_ui/entities/exceptions/exceptions.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
// import 'package:http/testing.dart';
import 'package:mockito/mockito.dart';
// import 'package:sacco/utils/export.dart';

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

class StatelessCommercioKycMock extends Mock implements StatelessCommercioKyc {}

void main() async {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  final correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'http://lcd-url',
  );
  const correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  final correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  final correctWalletAddress = correctWallet.bech32Address;
  final httpHelperMock = HttpHelperMock();
  final secretStorageMethodsMock = SecretStorageMethodsMock();
  const secureStorageKey = 'secure-storage-key';
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
  await correctCommercioAccount.generateNewWallet(
    mnemonic: correctMnemonic,
  );
  final correctInviteUser = InviteUser(
    recipientDid: correctWalletAddress,
    senderDid: correctWalletAddress,
  );
  final correctMembershipType = MembershipType.BRONZE;
  final correctBuyMembership = BuyMembership(
    membershipType: correctMembershipType.value,
    buyerDid: correctWalletAddress,
  );

  const correctTxHash =
      'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  // const correctTransactionRaw =
  //     '{"height":"0","txhash":"$correctTxHash","raw_log":"[]"}';
  // const correctAccountDataRaw =
  //     '{"height":"70927","result":{"type":"cosmos-sdk/Account","value":{"address":"did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u33","coins":[{"denom":"ucommercio","amount":"99990300"}],"public_key":"did:com:pub1addwnpepq0efr3d09eja4utyghxte0n8xku33d3cnjmd3wjypfv4y9l540z66spk8xf","account_number":8,"sequence":1}}}';
  // const correctNodeInfoRaw =
  //     '{"node_info":{"protocol_version":{"p2p":"7","block":"10","app":"0"},"id":"b9a5b42aba9d5b962a4a9d478d364e9614f17b63","listen_addr":"tcp://0.0.0.0:26656","network":"devnet","version":"0.33.3","channels":"4020212223303800","moniker":"testnet-int-demo00","other":{"tx_index":"on","rpc_address":"tcp://0.0.0.0:26657"}},"application_version":{"name":"appnetwork","server_name":"cnd","client_name":"cndcli","version":"2.1.2","commit":"8d5916146ab76bb6a4059ab83c55d861d8c97130","build_tags":"netgo,ledger","go":"go version go1.14.4 linux/amd64"}}';
  final correctFaucetInviteResponse = '{"tx_hash":"$correctTxHash"}';

  final statelessCommercioKycMock = StatelessCommercioKycMock();

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

      final response = await commercioKyc.requestFaucetInvite();

      expect(response.success, isTrue);
      expect(response.txHash, correctTxHash);
    });

    test('No wallet in commercioAccount should throw an exception', () async {
      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expect(
        commercioKyc.requestFaucetInvite(),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });

  group('Derive buy membership', () {
    test('Correct', () {
      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: correctCommercioAccount,
      );

      final buyMembership = commercioKyc.deriveBuyMembership(
        membershipType: correctMembershipType,
      );

      expect(buyMembership.buyerDid, correctWalletAddress);
      expect(buyMembership.membershipType, correctMembershipType.value);
    });

    test('No wallet in commercioAccount should throw an exception', () {
      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expect(
        () => commercioKyc.deriveBuyMembership(
          membershipType: correctMembershipType,
        ),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });

  group('Buy memberships', () {
    test('Correct', () async {
      // TxSender.client = MockClient(
      //   (_) => Future.value(Response(correctTransactionRaw, 200)),
      // );
      // AccountDataRetrieval.client = MockClient(
      //   (_) => Future.value(Response(correctAccountDataRaw, 200)),
      // );
      // NodeInfoRetrieval.client = MockClient(
      //   (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      // );

      when(statelessCommercioKycMock.buyMemberships(
        buyMemberships: [correctBuyMembership],
        wallet: correctWallet,
      )).thenAnswer(
        (_) => Future.value(TransactionResult(
          hash: correctTxHash,
          success: true,
        )),
      );

      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: correctCommercioAccount,
        statelessHandler: statelessCommercioKycMock,
      );

      final result = await commercioKyc.buyMemberships(
        buyMemberships: [correctBuyMembership],
      );

      expect(result.success, isTrue);
    });

    test('No wallet in commercioAccount should throw an exception', () async {
      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expect(
        () => commercioKyc.buyMemberships(
          buyMemberships: [correctBuyMembership],
        ),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });

  group('Derive invite member', () {
    test('Correct', () {
      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: correctCommercioAccount,
      );

      final inviteUser = commercioKyc.deriveInviteMember(
        invitedAddress: correctWalletAddress,
      );

      expect(inviteUser.recipientDid, correctWalletAddress);
      expect(inviteUser.senderDid, correctWalletAddress);
    });

    test('No wallet in commercioAccount should throw an exception', () {
      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expect(
        () => commercioKyc.deriveInviteMember(
          invitedAddress: correctWalletAddress,
        ),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });

  group('Invite member', () {
    test('Correct', () async {
      // TxSender.client = MockClient(
      //   (_) => Future.value(Response(correctTransactionRaw, 200)),
      // );
      // AccountDataRetrieval.client = MockClient(
      //   (_) => Future.value(Response(correctAccountDataRaw, 200)),
      // );
      // NodeInfoRetrieval.client = MockClient(
      //   (_) => Future.value(Response(correctNodeInfoRaw, 200)),
      // );

      when(statelessCommercioKycMock.inviteMembers(
        inviteUsers: [correctInviteUser],
        wallet: correctWallet,
      )).thenAnswer(
        (_) => Future.value(TransactionResult(
          hash: correctTxHash,
          success: true,
        )),
      );

      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: correctCommercioAccount,
        statelessHandler: statelessCommercioKycMock,
      );

      final result = await commercioKyc.inviteMembers(
        inviteUsers: [correctInviteUser],
      );

      expect(result.success, isTrue);
    });

    test('No wallet in commercioAccount should throw an exception', () async {
      final commercioKyc = StatefulCommercioKyc(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expect(
        () => commercioKyc.inviteMembers(
          inviteUsers: [correctInviteUser],
        ),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });
}
