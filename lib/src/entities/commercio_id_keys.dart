import 'package:basic_utils/basic_utils.dart';
import 'package:commerciosdk/entities/keys/export.dart';
import 'package:flutter/foundation.dart';

/// Represents the RSA verification and signature key pairs.
class CommercioIdKeys {
  final KeyPair<RSAPublicKey, RSAPrivateKey> rsaVerificationPair;
  final KeyPair<RSAPublicKey, RSAPrivateKey> rsaSignatureKeyPair;

  const CommercioIdKeys({
    @required this.rsaVerificationPair,
    @required this.rsaSignatureKeyPair,
  });

  CommercioIdKeys.fromJson(Map<String, dynamic> json)
      : rsaVerificationPair = KeyPairJsonExtension.fromJson(
          json['rsaVerificationPair'] as Map<String, dynamic>,
        ),
        rsaSignatureKeyPair = KeyPairJsonExtension.fromJson(
          json['rsaSignatureKeyPair'] as Map<String, dynamic>,
        );

  Map<String, dynamic> toJson() => {
        'rsaVerificationPair': KeyPairJsonExtension.toJson(rsaVerificationPair),
        'rsaSignatureKeyPair': KeyPairJsonExtension.toJson(rsaSignatureKeyPair),
      };
}

extension KeyPairJsonExtension on KeyPair<RSAPublicKey, RSAPrivateKey> {
  static KeyPair<RSAPublicKey, RSAPrivateKey> fromJson(
    Map<String, dynamic> json,
  ) {
    final pubKey = X509Utils.publicKeyFromPem(json['RSAPublicKey'] as String);
    final type = json['type'] as String;
    final rsaPublicKey = RSAPublicKey(pubKey, keyType: type);

    final secretKey = X509Utils.privateKeyFromPem(
      json['RSAPrivateKey'] as String,
    );
    final rsaPrivateKey = RSAPrivateKey(secretKey);

    return KeyPair(rsaPublicKey, rsaPrivateKey);
  }

  static Map<String, dynamic> toJson(
    KeyPair<RSAPublicKey, RSAPrivateKey> keyPair,
  ) =>
      {
        'RSAPublicKey':
            X509Utils.encodeRSAPublicKeyToPem(keyPair.publicKey.pubKey).trim(),
        'RSAPrivateKey':
            X509Utils.encodeRSAPrivateKeyToPem(keyPair.privateKey.secretKey)
                .trim(),
        'type': keyPair.publicKey.getType().trim()
      };
}
