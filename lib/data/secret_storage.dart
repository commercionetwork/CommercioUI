import 'package:flutter/foundation.dart';

abstract class ISecretStorage {
  bool get started;

  Future<void> write({@required String key, @required String value});

  Future<String> read({@required String key});

  Future<void> delete({@required String key});
}
