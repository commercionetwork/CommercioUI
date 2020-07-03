import 'package:commercio_ui/data/secret_storage.dart';
import 'package:flutter/foundation.dart';

class SecretStorage implements ISecretStorage {
  bool get started => null;

  Future<void> write({@required String key, @required String value}) => null;

  Future<String> read({@required String key}) => null;

  Future<void> delete({@required String key}) => null;
}
