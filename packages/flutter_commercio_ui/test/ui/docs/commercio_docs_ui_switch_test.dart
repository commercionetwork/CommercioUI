import 'package:commerciosdk/docs/docs_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Submit EncData Event', (WidgetTester tester) async {
    final bloc = CommercioDocsEncDataBloc();

    final commSwitchList = ShareDocumentEncryptedDataSwitchListTiles();
    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(home: Scaffold(body: commSwitchList)),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    final finders = <Finder>[];
    for (final encData in EncryptedData.values) {
      finders.add(find.text(encData.toString().split('.')[1]));
      expect(find.text(encData.toString().split('.')[1]), findsOneWidget);
    }

    await tester.tap(finders[0]);
    await tester.pumpAndSettle();
  });

  testWidgets('Submit EncData with custom title', (WidgetTester tester) async {
    const entryText = 'Entry';
    final bloc = CommercioDocsEncDataBloc();

    final commSwitchList = ShareDocumentEncryptedDataSwitchListTiles(
      title: (entry) => Text(entryText),
    );
    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(home: Scaffold(body: commSwitchList)),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.text(entryText), findsNWidgets(3));
  });
}
