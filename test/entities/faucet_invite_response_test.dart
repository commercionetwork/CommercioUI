import 'dart:convert';

import 'package:commercio_ui/entities/faucet_invite_response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const correctTxHash =
      'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  final correctFaucetInviteResponse = '{"tx_hash":"$correctTxHash"}';
  const errorMessage =
      'sign/broadcast message error: could not broadcast transaction to the Cosmos network: codespace sdk: unknown request: did:com:1094hqazlk36va0cqha96fg30y6cdrrxmu4j6at has already been invited: failed to execute message; message index: 0, code 6';
  final wrongFaucetInviteReponseAlreadyInvited = '{"error":"$errorMessage"}';

  group('Constructor', () {
    test('Correct', () {
      final faucetInviteResponse = FaucetInviteResponse();

      expect(faucetInviteResponse.success, isFalse);
      expect(faucetInviteResponse.txHash, isNull);
      expect(faucetInviteResponse.error, isNull);
    });

    test('Correct with hash', () {
      final faucetInviteResponse = FaucetInviteResponse(
        txHash: correctTxHash,
      );

      expect(faucetInviteResponse.success, isTrue);
      expect(faucetInviteResponse.txHash, correctTxHash);
      expect(faucetInviteResponse.error, isNull);
    });

    test('Correct with error', () {
      final faucetInviteResponse = FaucetInviteResponse(
        error: errorMessage,
      );

      expect(faucetInviteResponse.success, isFalse);
      expect(faucetInviteResponse.txHash, isNull);
      expect(faucetInviteResponse.error, errorMessage);
    });
  });

  group('From JSON', () {
    test('Hash', () {
      final faucetInviteResponse = FaucetInviteResponse.fromJson(
          jsonDecode(correctFaucetInviteResponse));

      expect(faucetInviteResponse.success, isTrue);
      expect(faucetInviteResponse.txHash, correctTxHash);
      expect(faucetInviteResponse.error, isNull);
    });

    test('Error', () {
      final faucetInviteResponse = FaucetInviteResponse.fromJson(
          jsonDecode(wrongFaucetInviteReponseAlreadyInvited));

      expect(faucetInviteResponse.success, isFalse);
      expect(faucetInviteResponse.txHash, isNull);
      expect(faucetInviteResponse.error, errorMessage);
    });
  });

  group('To JSON', () {
    test('Hash', () {
      final faucetInviteResponse = FaucetInviteResponse(
        txHash: correctTxHash,
      ).toJson();

      expect(faucetInviteResponse['tx_hash'], correctTxHash);
    });

    test('Error', () {
      final faucetInviteResponse = FaucetInviteResponse(
        error: errorMessage,
      ).toJson();

      expect(faucetInviteResponse['error'], errorMessage);
    });
  });
}
