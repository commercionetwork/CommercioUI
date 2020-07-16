import 'package:commercio_ui/data/secret_storage.dart';
import 'package:flutter/foundation.dart';

/// Stub implementation of [ISecretStorage] in case of no platform-specific
/// implementation is found.
class SecretStorage implements ISecretStorage {
  SecretStorage({Object handler});

  bool get started => throw UnimplementedError();

  Future<void> write({@required String key, @required String value}) =>
      throw UnimplementedError();

  Future<String> read({@required String key}) => throw UnimplementedError();

  Future<void> delete({@required String key}) => throw UnimplementedError();
}
