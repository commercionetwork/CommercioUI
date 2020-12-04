import 'dart:convert';
import 'dart:io';

import 'package:commercio_ui/src/entities/commercio_id_keys.dart';
import 'package:test/test.dart';

void main() {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  final correctIdKeys = File('test_resources/id_keys.json').readAsStringSync();
  final keysObj = CommercioIdKeys.fromJson(jsonDecode(correctIdKeys));

  test('Correct', () {
    final commIdKeys = CommercioIdKeys(
      rsaVerificationPair: keysObj.rsaVerificationPair,
      rsaSignatureKeyPair: keysObj.rsaSignatureKeyPair,
    );

    expect(commIdKeys.rsaVerificationPair, keysObj.rsaVerificationPair);
    expect(commIdKeys.rsaSignatureKeyPair, keysObj.rsaSignatureKeyPair);
  });

  test('From JSON', () {
    final commIdKeys = CommercioIdKeys.fromJson(jsonDecode(correctIdKeys));

    expect(jsonEncode(commIdKeys), jsonEncode(keysObj));
  });

  test('To JSON', () {
    final commIdKeys = CommercioIdKeys(
      rsaVerificationPair: keysObj.rsaVerificationPair,
      rsaSignatureKeyPair: keysObj.rsaSignatureKeyPair,
    );
    final commIdKeysRaw = jsonEncode(commIdKeys);

    expect(
      commIdKeysRaw.trim(),
      correctIdKeys
          .replaceAll('\n', '')
          .replaceAll('\r', '')
          .replaceAll('    ', '')
          .replaceAll(' {', '{')
          .replaceAll(' "', '"'),
    );
  });
}
