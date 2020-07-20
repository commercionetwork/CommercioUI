import 'package:commercio_ui/src/data/secret_storage.dart';
import 'package:flutter/foundation.dart';

/// Stub implementation of [ISecretStorage] in case of no platform-specific
/// implementation is found.
class SecretStorage implements ISecretStorage {
  SecretStorage({Object handler});

  @override
  bool get started => throw UnimplementedError();

  @override
  Future<void> write({@required String key, @required String value}) =>
      throw UnimplementedError();

  @override
  Future<String> read({@required String key}) => throw UnimplementedError();

  @override
  Future<void> delete({@required String key}) => throw UnimplementedError();
}
