import 'package:commercio_ui/ui/docs/bloc/commercio_docs_bloc.dart';
import 'package:commercio_ui/ui/docs/bloc/commercio_docs_event.dart';
import 'package:commercio_ui/ui/docs/bloc/commercio_docs_state.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CommercioDocsEncDataBloc', () {
    test('Encrypted data list', () async {
      final List<String> states = [];

      final bloc = CommercioDocsEncDataBloc();
      bloc.listen(
        (state) => states.add(
          state.runtimeType.toString().replaceAll('_\$', ''),
        ),
      );

      expect(bloc.encryptedDataList, isEmpty);

      bloc.add(CommercioDocsChangeEncryptedData(
        encryptedDataKey: EncryptedData.CONTENT_URI,
        newValue: true,
      ));

      await expectLater(
        bloc.asBroadcastStream(),
        emitsInOrder(
          [
            CommercioDocsEncDataState.initial(
              encryptedData: {
                EncryptedData.CONTENT_URI: false,
                EncryptedData.METADATA_CONTENT_URI: false,
                EncryptedData.METADATA_SCHEMA_URI: false,
              },
            ),
            CommercioDocsEncDataState.loading(),
            CommercioDocsEncDataState(
              encryptedData: {
                EncryptedData.CONTENT_URI: true,
                EncryptedData.METADATA_CONTENT_URI: false,
                EncryptedData.METADATA_SCHEMA_URI: false,
              },
            ),
          ],
        ),
      );
    });
  });
}
