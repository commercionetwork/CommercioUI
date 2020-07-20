import 'dart:io';

import 'package:commercio_ui/src/core/core.dart';
import 'package:commercio_ui/src/core/utils/utils.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:http/http.dart';
// import 'package:http/testing.dart';
import 'package:mockito/mockito.dart';
// import 'package:sacco/utils/export.dart';

class HttpHelperMock extends Mock implements HttpHelper {}

void main() {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  // const commercioMint = StatelessCommercioMint();
  // final correctNetworkInfo = NetworkInfo(
  //   bech32Hrp: 'bech32Hrp',
  //   lcdUrl: 'http://lcd-url',
  // );
  // const correctMnemonic =
  //     'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  // final correctWallet = Wallet.derive(
  //   correctMnemonic.split(' '),
  //   correctNetworkInfo,
  // );
  // const correctTxHash =
  //     'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  // const correctTransactionRaw =
  //     '{"height":"0","txhash":"$correctTxHash","raw_log":"[]"}';
  // const correctAccountDataRaw =
  //     '{"height":"70927","result":{"type":"cosmos-sdk/Account","value":{"address":"did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u33","coins":[{"denom":"ucommercio","amount":"99990300"}],"public_key":"did:com:pub1addwnpepq0efr3d09eja4utyghxte0n8xku33d3cnjmd3wjypfv4y9l540z66spk8xf","account_number":8,"sequence":1}}}';
  // const correctNodeInfoRaw =
  //     '{"node_info":{"protocol_version":{"p2p":"7","block":"10","app":"0"},"id":"b9a5b42aba9d5b962a4a9d478d364e9614f17b63","listen_addr":"tcp://0.0.0.0:26656","network":"devnet","version":"0.33.3","channels":"4020212223303800","moniker":"testnet-int-demo00","other":{"tx_index":"on","rpc_address":"tcp://0.0.0.0:26657"}},"application_version":{"name":"appnetwork","server_name":"cnd","client_name":"cndcli","version":"2.1.2","commit":"8d5916146ab76bb6a4059ab83c55d861d8c97130","build_tags":"netgo,ledger","go":"go version go1.14.4 linux/amd64"}}';
  const correctSignerDid = 'signerDid';
  const correctTimestamp = '1234';
  // final correctCloseCdp = CloseCdp(
  //   signerDid: correctSignerDid,
  //   timeStamp: correctTimestamp,
  // );

  /*group('Open Cdp', () {
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

      final result = await commercioMint.openCdp(
        wallet: correctWallet,
        amount: 10,
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

      final result = await commercioMint.openCdp(
        wallet: correctWallet,
        amount: 10,
        fee: const StdFee(
          amount: [StdCoin(amount: '10', denom: 'ucommercio')],
          gas: '10',
        ),
      );

      expect(result.success, isTrue);
    });

    test('Http 404 error throws an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response('', 404)),
      );

      expect(
        () => commercioMint.openCdp(
          wallet: correctWallet,
          amount: 10,
        ),
        throwsException,
      );
    });
  });*/

  group('Derive CloseCdp', () {
    test('Correct', () {
      final closeCdp = CloseCdp(
        signerDid: correctSignerDid,
        timeStamp: correctTimestamp,
      );

      expect(closeCdp.signerDid, correctSignerDid);
      expect(closeCdp.timeStamp, correctTimestamp);
    });
  });

  /*group('Close Cdps', () {
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

      final result = await commercioMint.closeCdps(
        wallet: correctWallet,
        closeCdps: [correctCloseCdp],
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

      final result = await commercioMint.closeCdps(
        wallet: correctWallet,
        closeCdps: [correctCloseCdp],
        fee: const StdFee(
          amount: [StdCoin(amount: '10', denom: 'ucommercio')],
          gas: '10',
        ),
      );

      expect(result.success, isTrue);
    });

    test('Http 404 error throws an exception', () async {
      TxSender.client = MockClient(
        (_) => Future.value(Response('', 404)),
      );

      expect(
        () => commercioMint.closeCdps(
          wallet: correctWallet,
          closeCdps: [correctCloseCdp],
        ),
        throwsException,
      );
    });
  });*/
}
