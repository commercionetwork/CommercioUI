import 'package:commercio_ui/src/data/secret_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences_web/shared_preferences_web.dart';

/// Web implementation of [ISecretStorage] that used the [localStorage] of the
/// browser to store keys and values.
///
/// **WARNING**: this implementation does not encrypt the data stored so
/// it should not be used to store real data.
class SecretStorage implements ISecretStorage {
  SecretStorage({Object handler})
      : _handler = handler ?? SharedPreferencesPlugin();

  final SharedPreferencesPlugin _handler;
  final String _keyPrefix = 'flutter.';

  @override
  bool get started => _handler != null;

  @override
  Future<void> delete({String key}) {
    if (!started) {
      throw Exception('Not already started');
    }

    return _handler.remove('$_keyPrefix$key');
  }

  @override
  Future<String> read({@required String key}) async {
    if (!started) {
      throw Exception('Not already started');
    }

    final map = await _handler.getAll();

    return map['$_keyPrefix$key'];
  }

  @override
  Future<void> write({@required String key, @required String value}) {
    if (!started) {
      throw Exception('Not already started');
    }

    return _handler.setValue('String', '$_keyPrefix$key', value);
  }
}
