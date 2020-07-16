import 'package:commercio_ui/data/secret_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences_linux/shared_preferences_linux.dart';
import 'dart:io';

/// Web implementation of [ISecretStorage] that used the [localStorage] of the
/// browser to store keys and values.
///
/// **WARNING**: this implementation does not encrypt the data stored so
/// it should not be used to store real data.
class SecretStorage implements ISecretStorage {
  SecretStorage({Object handler})
      : _handler = handler ?? _isMobile
            ? FlutterSecureStorage()
            : SharedPreferencesLinux();

  final Object _handler;

  bool get started => _handler != null;

  static bool get _isMobile => Platform.isAndroid || Platform.isIOS;

  // ignore: unused_element
  static bool get _isDesktop => !_isMobile;

  Future<void> delete({String key}) {
    return _isMobile
        ? _mobileDelete(_handler, key: key)
        : _desktopDelete(_handler, key: key);
  }

  Future<void> _mobileDelete(FlutterSecureStorage handler, {String key}) {
    return handler.delete(key: key);
  }

  Future<void> _desktopDelete(SharedPreferencesLinux handler, {String key}) {
    return handler.remove(key);
  }

  Future<String> read({@required String key}) async {
    if (!started) {
      throw Exception('Not already started');
    }

    return _isMobile
        ? _mobileRead(_handler, key: key)
        : _desktopRead(_handler, key: key);
  }

  Future<String> _mobileRead(FlutterSecureStorage handler,
      {@required String key}) async {
    return handler.read(key: key);
  }

  Future<String> _desktopRead(SharedPreferencesLinux handler,
      {@required String key}) async {
    final map = await handler.getAll();

    return map[key];
  }

  Future<void> write({@required String key, @required String value}) {
    if (!started) {
      throw Exception('Not already started');
    }

    return _isMobile
        ? _mobileWrite(_handler, key: key, value: value)
        : _desktopWrite(_handler, key: key, value: value);
  }

  Future<void> _mobileWrite(
    FlutterSecureStorage handler, {
    @required String key,
    @required String value,
  }) {
    return handler.write(key: key, value: value);
  }

  Future<void> _desktopWrite(
    SharedPreferencesLinux handler, {
    @required String key,
    @required String value,
  }) {
    return handler.setValue('String', '$key', value);
  }
}
