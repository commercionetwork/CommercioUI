import 'dart:async';
import 'dart:isolate';

/// Compute the given `callback` in a separate `Isolate` with `message` as
/// only parameter.
///
/// The `callback` must reside outside any class. Because it can accept only
/// one argument (the `message`) please enclose all the required parameters in
/// a new class accepted by your callback as **first** and only one parameter,
/// no a named one.
///
/// Largely inspired from the IO implementation of the Flutter compute function:
/// https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/foundation/_isolates_io.dart
Future<R> compute<Q, R>(
  ComputeCallback<Q, FutureOr<R>> callback,
  Q message,
) async {
  final receiverPort = ReceivePort();
  final errorPort = ReceivePort();
  final exitPort = ReceivePort();
  final completer = Completer<R>();

  // Spawn the isolate wrapping the callback and the message in custom classes
  // to handle the isolate inter-communication.
  final isolate = await Isolate.spawn<_SpawnConfiguration<Q, FutureOr<R>>>(
    _spawnCallback,
    _SpawnConfiguration<Q, FutureOr<R>>(
      callback,
      message,
      receiverPort.sendPort,
    ),
    errorsAreFatal: true,
    onError: errorPort.sendPort,
    onExit: exitPort.sendPort,
  );

  // Listen on errors
  errorPort.listen(
    (dynamic error) {
      assert(error is List<dynamic>);
      assert(error.length == 2);
      final exception = Exception(error[0]);
      final stack = StackTrace.fromString(error[1] as String);

      completer.completeError(exception, stack);
    },
  );

  // Listen on exit
  exitPort.listen((_) {
    // If the isolate has terminated before that the completer received a value
    // the throw an exception.
    if (!completer.isCompleted) {
      completer.completeError(
        Exception('Isolate exited without result or error.'),
      );
    }
  });

  // Listen on result
  receiverPort.listen(
    (message) {
      if (message is R || message == null) {
        // Complete the future with the message received
        completer.complete(message as R);
      }
    },
  );

  // Wait to the completer to complete so we can close the streams and the
  // isolate
  await completer.future;

  errorPort.close();
  exitPort.close();
  receiverPort.close();
  isolate.kill();

  // Return the (already) completed future
  return completer.future;
}

/// Helper typedef used to define the type of callback needed in `compute()`.
typedef ComputeCallback<Q, R> = FutureOr<R> Function(Q message);

class _SpawnConfiguration<Q, R> {
  /// Helper class that needs to be passed down to [_spawnCallback] to execute
  /// the [callback].
  ///
  /// Remember `Isolate.spawn()` requires a generic object to be passed as data to
  /// the callback function in our `compute()` function that data is represented
  /// by this class.
  const _SpawnConfiguration(this.callback, this.message, this.resultPort);

  /// The given user callback.
  final ComputeCallback<Q, R> callback;

  /// The given user message (data to be provided to `callback`).
  final Q message;

  /// `SendPort` where send the result of the computed `callback` funciton. The
  /// `Isolate` will listen on this port for the resulting message that will
  /// be used to complete the `Completer`.
  final SendPort resultPort;

  /// Helper method to call the `callback` with the given `message`. This helper
  /// method is useful, in particular, to execute the `callback` with the right
  /// types.
  FutureOr<R> apply() => callback(message);
}

Future<void> _spawnCallback<Q, R>(
    _SpawnConfiguration<Q, FutureOr<R>> config) async {
  // Execute the callback in a Future and wait for the result
  final result = await config.apply();

  // Send the result to the port where the `Isolate` is listening
  config.resultPort.send(result);
}
