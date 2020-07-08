import 'package:commercio_ui/data/data.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class FlutterSecureStorageMock extends Mock implements FlutterSecureStorage {}

void main() {
  const storageKey = 'storage-key';
  const storageValue = 'storage-value';
  final storageMock = FlutterSecureStorageMock();
  final secretStorage = SecretStorage(handler: storageMock);

  group('Constructor', () {
    test('Default', () {
      final secretStorage = SecretStorage(handler: storageMock);

      expect(secretStorage, isNotNull);
      expect(secretStorage.started, isTrue);
    });
  });

  group('Write', () {
    test('Correct', () async {
      when(secretStorage.write(key: storageKey, value: storageValue))
          .thenAnswer((_) => Future.value());

      expectLater(
        () => secretStorage.write(key: storageKey, value: storageValue),
        returnsNormally,
      );
    });

    test('Exception', () async {
      when(secretStorage.write(key: storageKey, value: storageValue))
          .thenThrow(Exception());

      expectLater(
          () => secretStorage.write(key: storageKey, value: storageValue),
          throwsException);
    });
  });

  group('Read', () {
    test('Correct', () async {
      when(secretStorage.read(key: storageKey))
          .thenAnswer((_) => Future.value());

      expectLater(() => secretStorage.read(key: storageKey), returnsNormally);
    });

    test('Exception', () async {
      when(secretStorage.read(key: storageKey)).thenThrow(Exception());

      expectLater(() => secretStorage.read(key: storageKey), throwsException);
    });
  });

  group('Delete', () {
    test('Correct', () async {
      when(secretStorage.delete(key: storageKey))
          .thenAnswer((_) => Future.value());

      expectLater(() => secretStorage.delete(key: storageKey), returnsNormally);
    });

    test('Exception', () async {
      when(secretStorage.delete(key: storageKey)).thenThrow(Exception());

      expectLater(() => secretStorage.delete(key: storageKey), throwsException);
    });
  });
}
