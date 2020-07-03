import 'package:commercio_ui/data/secret_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecretStorage implements ISecretStorage {
  SecretStorage() : _handler = FlutterSecureStorage();

  final FlutterSecureStorage _handler;

  bool get started => _handler != null;

  Future<void> delete({String key}) {
    if (!started) {
      throw Exception('Not already started');
    }

    return _handler.delete(key: key);
  }

  Future<String> read({@required String key}) {
    if (!started) {
      throw Exception('Not already started');
    }

    return _handler.read(key: key);
  }

  Future<void> write({@required String key, @required String value}) {
    if (!started) {
      throw Exception('Not already started');
    }

    return _handler.write(key: key, value: value);
  }
}
