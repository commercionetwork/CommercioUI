import 'dart:io';

import 'package:commercio_ui/src/core/core.dart';
import 'package:commercio_ui/src/core/utils/utils.dart';
import 'package:commercio_ui/src/data/data.dart';
import 'package:commercio_ui/src/entities/exceptions/exceptions.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:http/http.dart';
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

class StatelessCommercioMintMock extends Mock
    implements StatelessCommercioMint {}

void main() async {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  final correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'http://lcd-url',
  );
  final httpHelperMock = HttpHelperMock();
  final secretStorageMethodsMock = SecretStorageMethodsMock();
  const secureStorageKey = 'secure-storage-key';
  const correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  final correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  final correctCommercioAccount = StatefulCommercioAccount(
    storage: secretStorageMethodsMock,
    storageKey: secureStorageKey,
    networkInfo: correctNetworkInfo,
    httpHelper: httpHelperMock,
  );
  await correctCommercioAccount.generateNewWallet(
    mnemonic: correctMnemonic,
  );
  final commercioAccountWithoutWallet = StatefulCommercioAccount(
    storage: secretStorageMethodsMock,
    storageKey: secureStorageKey,
    networkInfo: correctNetworkInfo,
    httpHelper: httpHelperMock,
  );

  const correctTxHash =
      'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  // const correctTransactionRaw =
  //     '{"height":"0","txhash":"$correctTxHash","raw_log":"[]"}';
  // const correctAccountDataRaw =
  //     '{"height":"70927","result":{"type":"cosmos-sdk/Account","value":{"address":"did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u33","coins":[{"denom":"ucommercio","amount":"99990300"}],"public_key":"did:com:pub1addwnpepq0efr3d09eja4utyghxte0n8xku33d3cnjmd3wjypfv4y9l540z66spk8xf","account_number":8,"sequence":1}}}';
  // const correctNodeInfoRaw =
  //     '{"node_info":{"protocol_version":{"p2p":"7","block":"10","app":"0"},"id":"b9a5b42aba9d5b962a4a9d478d364e9614f17b63","listen_addr":"tcp://0.0.0.0:26656","network":"devnet","version":"0.33.3","channels":"4020212223303800","moniker":"testnet-int-demo00","other":{"tx_index":"on","rpc_address":"tcp://0.0.0.0:26657"}},"application_version":{"name":"appnetwork","server_name":"cnd","client_name":"cndcli","version":"2.1.2","commit":"8d5916146ab76bb6a4059ab83c55d861d8c97130","build_tags":"netgo,ledger","go":"go version go1.14.4 linux/amd64"}}';

  const correctSignerDid = 'signerDid';
  const correctTimestamp = '1234';
  const correctBlockHeigth = 1234;
  final correctCloseCdp = CloseCdp(
    signerDid: correctSignerDid,
    timeStamp: correctTimestamp,
  );
  final statelessCommercioMintMock = StatelessCommercioMintMock();

  group('Constructor', () {
    test('Correct', () async {
      final commercioMint = StatefulCommercioMint(
        commercioAccount: correctCommercioAccount,
      );

      expect(commercioMint.commercioAccount, correctCommercioAccount);
    });
  });

  group('Open Cdp', () {
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

      when(statelessCommercioMintMock.openCdp(
        wallet: correctWallet,
        amount: 10,
      )).thenAnswer(
        (_) => Future.value(TransactionResult(
          hash: correctTxHash,
          success: true,
        )),
      );

      final commercioMint = StatefulCommercioMint(
        commercioAccount: correctCommercioAccount,
        statelessHandler: statelessCommercioMintMock,
      );

      final result = await commercioMint.openCdp(amount: 10);

      expect(result.success, isTrue);
    });

    test('Negative amount should throw an exception', () async {
      final commercioMint = StatefulCommercioMint(
        commercioAccount: correctCommercioAccount,
      );

      expect(() => commercioMint.openCdp(amount: -10), throwsArgumentError);
    });

    test('No wallet in commercioAccount should throw an exception', () async {
      final commercioMint = StatefulCommercioMint(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expect(
        () => commercioMint.openCdp(amount: 10),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });

  group('Derive close cdp', () {
    test('Correct', () {
      final commercioMint = StatefulCommercioMint(
        commercioAccount: correctCommercioAccount,
      );

      final closeCdp = commercioMint.deriveCloseCdp(
        blockHeight: correctBlockHeigth,
      );

      expect(closeCdp.signerDid, correctCommercioAccount.walletAddress);
      expect(closeCdp.timeStamp, correctTimestamp);
    });

    test('No wallet should throw an exception', () {
      final commercioMint = StatefulCommercioMint(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expect(
        () => commercioMint.deriveCloseCdp(
          blockHeight: correctBlockHeigth,
        ),
        throwsA(isA<WalletNotFoundException>()),
      );
    });

    test('Negative amount should throw an exception', () async {
      final commercioMint = StatefulCommercioMint(
        commercioAccount: correctCommercioAccount,
      );

      expect(
        () => commercioMint.deriveCloseCdp(
          blockHeight: -10,
        ),
        throwsArgumentError,
      );
    });
  });

  group('Close Cdps', () {
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

      when(statelessCommercioMintMock.closeCdps(
        wallet: correctWallet,
        closeCdps: [correctCloseCdp],
      )).thenAnswer(
        (_) => Future.value(TransactionResult(
          hash: correctTxHash,
          success: true,
        )),
      );

      final commercioMint = StatefulCommercioMint(
        commercioAccount: correctCommercioAccount,
        statelessHandler: statelessCommercioMintMock,
      );

      final result = await commercioMint.closeCdps(
        closeCdps: [correctCloseCdp],
      );

      expect(result.success, isTrue);
    });

    test('No wallet in commercioAccount should throw an exception', () async {
      final commercioMint = StatefulCommercioMint(
        commercioAccount: commercioAccountWithoutWallet,
      );

      expect(
        () => commercioMint.closeCdps(
          closeCdps: [correctCloseCdp],
        ),
        throwsA(isA<WalletNotFoundException>()),
      );
    });
  });
}
