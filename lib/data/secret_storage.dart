import 'package:flutter/foundation.dart';

/// Represents a abstract API that can be used to store, retrieve and delete
/// secrets. Ideally such storage should be secure and encrypted.
///
/// Some examples of informations that can be saved are password and
/// private keys.
abstract class ISecretStorage {
  /// Returns [true] if the storage is avaiable.
  bool get started;

  /// Store a [value] associated to [key]. If [value] is an object it can be
  /// stored JSON-encoding it first.
  Future<void> write({@required String key, @required String value});

  /// Get the content indexed in the storage by [key] as [String], generally
  /// in JSON encoded form.
  Future<String> read({@required String key});

  /// Delete the content indexed in the storage by [key].
  Future<void> delete({@required String key});
}
