import 'package:commerciosdk/export.dart';
import 'package:pointycastle/pointycastle.dart';

/// Represents the RSA verification and signature key pairs.
class CommercioIdKeys {
  final CommercioKeyPair<CommercioRSAPublicKey, CommercioRSAPrivateKey>
      rsaVerificationPair;
  final CommercioKeyPair<CommercioRSAPublicKey, CommercioRSAPrivateKey>
      rsaSignatureKeyPair;

  const CommercioIdKeys({
    required this.rsaVerificationPair,
    required this.rsaSignatureKeyPair,
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

extension KeyPairJsonExtension
    on CommercioKeyPair<CommercioRSAPublicKey, CommercioRSAPrivateKey> {
  static CommercioKeyPair<CommercioRSAPublicKey, CommercioRSAPrivateKey>
      fromJson(
    Map<String, dynamic> json,
  ) {
    final pubKey = RSAKeyParser.parseFromPem(
      json['RSAPublicKey'] as String,
    ) as RSAPublicKey;
    final keyType = _rsaKeyTypeToEnum(json['type'] as String);
    final rsaPublicKey = CommercioRSAPublicKey(pubKey, keyType: keyType);

    final secretKey = RSAKeyParser.parseFromPem(
      json['RSAPrivateKey'] as String,
    ) as RSAPrivateKey;
    final rsaPrivateKey = CommercioRSAPrivateKey(secretKey);

    return CommercioKeyPair(rsaPublicKey, rsaPrivateKey);
  }

  static Map<String, dynamic> toJson(
    CommercioKeyPair<CommercioRSAPublicKey, CommercioRSAPrivateKey> keyPair,
  ) =>
      {
        'RSAPublicKey': keyPair.publicKey.getPKCS1Encoded().trim(),
        'RSAPrivateKey': keyPair.privateKey.encodePrivateKeyToPemPKCS1().trim(),
        'type': keyPair.publicKey.getType().trim()
      };
}

CommercioRSAKeyType _rsaKeyTypeToEnum(String rawKeyType) {
  if (rawKeyType == CommercioRSAKeyType.signature.value) {
    return CommercioRSAKeyType.signature;
  } else if (rawKeyType == CommercioRSAKeyType.verification.value) {
    return CommercioRSAKeyType.verification;
  } else {
    throw Exception(
        'Invalid $rawKeyType. Valid values are: ${CommercioRSAKeyType.signature.value} and ${CommercioRSAKeyType.verification.value}');
  }
}
