import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Mobile implementation of [ISecretStorage] that uses the secure storage
/// avaiable in Android and iOS.
class SecretStorage implements ISecretStorage {
  SecretStorage({Object? handler})
      : _handler =
            handler as FlutterSecureStorage? ?? const FlutterSecureStorage();

  final FlutterSecureStorage _handler;

  @override
  bool get started => true;

  @override
  Future<void> delete({required String key}) {
    if (!started) {
      throw Exception('Not already started');
    }

    return _handler.delete(key: key);
  }

  @override
  Future<String?> read({required String key}) {
    if (!started) {
      throw Exception('Not already started');
    }

    return _handler.read(key: key);
  }

  @override
  Future<void> write({required String key, required String value}) {
    if (!started) {
      throw Exception('Not already started');
    }

    return _handler.write(key: key, value: value);
  }
}
