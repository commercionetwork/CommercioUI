import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CommercioDocsEncDataBloc', () {
    test('Encrypted data list', () async {
      final bloc = CommercioDocsEncDataBloc();

      expect(
        bloc,
        emitsInOrder([
          isA<CommercioDocsEncDataStateLoading>(),
          isA<CommercioDocsEncDataStateData>(),
        ]),
      );

      expect(bloc.encryptedDataList, isEmpty);

      bloc.add(CommercioDocsChangeEncryptedData(
        encryptedDataKey: EncryptedData.CONTENT_URI,
        newValue: true,
      ));
    });
  });
}
