import 'package:commercio_ui/ui/docs/bloc/commercio_docs_bloc.dart';
import 'package:commercio_ui/ui/docs/bloc/commercio_docs_event.dart';
import 'package:commercio_ui/ui/docs/bloc/commercio_docs_state.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CommercioDocsEncDataBloc', () {
    test('Encrypted data list', () async {
      final bloc = CommercioDocsEncDataBloc();

      expectLater(
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
