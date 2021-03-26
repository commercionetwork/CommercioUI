import 'dart:io';

import 'package:commercio_ui/src/core/utils/utils.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:sacco/sacco.dart';
import 'package:test/test.dart';

void main() {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  const correctFaucetDomain = 'faucet-devnet.localhost';
  final correctLcdUrl = Uri.parse('http://lcd.url');
  final correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'did:com:',
    lcdUrl: correctLcdUrl,
  );
  const correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  final correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  final correctWalletAddress = correctWallet.bech32Address;
  final correctTumblerResponse =
      File('test_resources/correct_tumbler_response.json').readAsStringSync();

  group('HTTP path extension', () {
    test('Value', () {
      expect(HttpPath.give.value, '/give');
      expect(HttpPath.invite.value, '/invite');
    });
  });

  group('HTTP endpoint extension', () {
    test('Value', () {
      expect(
        HttpEndpoint.balance.value(
          walletAddress: correctWalletAddress,
          lcdUrl: correctLcdUrl,
        ),
        '$correctLcdUrl/bank/balances/$correctWalletAddress',
      );
      expect(
        HttpEndpoint.sentDocs.value(
          walletAddress: correctWalletAddress,
          lcdUrl: correctLcdUrl,
        ),
        '$correctLcdUrl/docs/$correctWalletAddress/sent',
      );
      expect(
        HttpEndpoint.receivedDocs.value(
          walletAddress: correctWalletAddress,
          lcdUrl: correctLcdUrl,
        ),
        '$correctLcdUrl/docs/$correctWalletAddress/received',
      );
      expect(
        HttpEndpoint.getTumbler.value(
          walletAddress: correctWalletAddress,
          lcdUrl: correctLcdUrl,
        ),
        '$correctLcdUrl/government/tumbler',
      );
    });
  });

  group('Constructor', () {
    test('Correct', () async {
      final httpHelper = HttpHelper();

      expect(httpHelper.httpClient, isNotNull);
      expect(httpHelper.faucetDomain, isNotNull);
      expect(httpHelper.lcdUrl, isNotNull);
    });
  });

  group('Faucet request', () {
    test('Correct', () async {
      final Client clientMock = MockClient(
        (_) => Future.value(Response('', 200)),
      );

      final httpHelper = HttpHelper(
        httpClient: clientMock,
        faucetDomain: correctFaucetDomain,
        lcdUrl: correctLcdUrl,
      );

      final response = await httpHelper.faucetRequest(
        path: HttpPath.give,
        data: {},
      );

      expect(response.statusCode, 200);
      expect(response.body, '');
    });

    test('Correct with http', () async {
      final Client clientMock = MockClient(
        (_) => Future.value(Response('', 200)),
      );

      final httpHelper = HttpHelper(
        httpClient: clientMock,
        faucetDomain: correctFaucetDomain,
        lcdUrl: correctLcdUrl,
      );

      final response = await httpHelper.faucetRequest(
        path: HttpPath.give,
        data: {},
        https: false,
      );

      expect(response.statusCode, 200);
      expect(response.body, '');
    });
  });

  group('Get request', () {
    test('Correct', () async {
      final Client clientMock = MockClient(
        (_) => Future.value(Response('', 200)),
      );

      final httpHelper = HttpHelper(
        httpClient: clientMock,
        faucetDomain: correctFaucetDomain,
        lcdUrl: correctLcdUrl,
      );

      final response = await httpHelper.getRequest(
        endpoint: HttpEndpoint.balance,
        walletAddress: correctWalletAddress,
      );

      expect(response.statusCode, 200);
      expect(response.body, '');
    });

    test('Correct + lcdUrl', () async {
      final Client clientMock = MockClient(
        (_) => Future.value(Response('', 200)),
      );

      final httpHelper = HttpHelper(
        httpClient: clientMock,
        faucetDomain: correctFaucetDomain,
        lcdUrl: correctLcdUrl,
      );

      final response = await httpHelper.getRequest(
        endpoint: HttpEndpoint.balance,
        walletAddress: correctWalletAddress,
        lcdUrl: Uri.parse('http://new.lcd.url'),
      );

      expect(response.statusCode, 200);
      expect(response.body, '');
    });
  });

  group('Get tumbler address', () {
    test('Correct', () async {
      final Client clientMock = MockClient(
        (_) => Future.value(Response(correctTumblerResponse, 200)),
      );

      final httpHelper = HttpHelper(
        httpClient: clientMock,
        faucetDomain: correctFaucetDomain,
        lcdUrl: correctLcdUrl,
      );

      final tumblerAddress = await httpHelper.getTumblerAddress();

      expect(tumblerAddress, 'did:com:14ttg3eyu88jda8udvxpwjl2pwxemh72w0grsau');
    });

    test('Correct + lcdUrl', () async {
      final Client clientMock = MockClient(
        (_) => Future.value(Response(correctTumblerResponse, 200)),
      );

      final httpHelper = HttpHelper(
        httpClient: clientMock,
        faucetDomain: correctFaucetDomain,
        lcdUrl: correctLcdUrl,
      );

      final tumblerAddress = await httpHelper.getTumblerAddress(
        lcdUrl: Uri.parse('http://new.lcd.url'),
      );

      expect(tumblerAddress, 'did:com:14ttg3eyu88jda8udvxpwjl2pwxemh72w0grsau');
    });
  });
}
