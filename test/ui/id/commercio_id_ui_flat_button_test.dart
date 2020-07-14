import 'dart:convert';
import 'dart:io';

import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/sacco.dart';

class StatefulCommercioIdMock extends Mock implements StatefulCommercioId {}

void main() {
  if (Directory.current.path.endsWith('/test')) {
    Directory.current = Directory.current.parent;
  }

  const childText = 'Child';
  const loadingText = 'Loading';
  final correctTxResult = TransactionResult(hash: '', success: true);
  final correctIdKeys = File('test_resources/id_keys.json').readAsStringSync();
  final correctIdKeysObj = CommercioIdKeys.fromJson(jsonDecode(correctIdKeys));
  final correctDidDoc = DidDocument.fromJson(
    jsonDecode(
      File('test_resources/correct_did_document.json').readAsStringSync(),
    ),
  );
  final commercioId = StatefulCommercioIdMock();

  testWidgets('Submit ShareDocument Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.hasKeys).thenReturn(false);
    when(commercioId.generateKeys()).thenAnswer((_) async => correctIdKeysObj);

    final bloc = CommercioIdGenerateKeysBloc(
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioIdGeneratedKeysStateLoading>(),
        isA<CommercioIdGeneratedKeysStateData>(),
        isA<CommercioIdGeneratedKeysStateLoading>(),
        isA<CommercioIdGeneratedKeysStateError>(),
      ]),
    );

    final commFlatButton = GenerateKeysFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdGenerateKeysEvent(),
      error: (context, err) => Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(err),
        ),
      ),
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.generateKeys()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit RestoreKeys Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.hasKeys).thenReturn(false);
    when(commercioId.restoreKeys()).thenAnswer((_) async => correctIdKeysObj);

    final bloc = CommercioIdRestoreKeysBloc(
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioIdRestoredKeysStateLoading>(),
        isA<CommercioIdRestoredKeysStateData>(),
        isA<CommercioIdRestoredKeysStateLoading>(),
        isA<CommercioIdRestoredKeysStateError>(),
      ]),
    );

    final commFlatButton = RestoreKeysFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdRestoreKeysEvent(),
      error: (context, err) => Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(err),
        ),
      ),
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.restoreKeys()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit DeleteKeys Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.deleteKeys()).thenAnswer((_) async => correctIdKeysObj);

    final bloc = CommercioIdDeleteKeysBloc(
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioIdDeletedKeysStateLoading>(),
        isA<CommercioIdDeletedKeysStateData>(),
        isA<CommercioIdDeletedKeysStateLoading>(),
        isA<CommercioIdDeletedKeysStateError>(),
      ]),
    );

    final commFlatButton = DeleteKeysFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdDeleteKeysEvent(),
      error: (context, err) => Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(err),
        ),
      ),
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.deleteKeys()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit DeriveDidDocument Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.deriveDidDocument())
        .thenAnswer((_) async => correctDidDoc);

    final bloc = CommercioIdDeriveDidDocumentBloc(
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioIdDerivedDidDocumentStateLoading>(),
        isA<CommercioIdDerivedDidDocumentStateData>(),
        isA<CommercioIdDerivedDidDocumentStateLoading>(),
        isA<CommercioIdDerivedDidDocumentStateError>(),
      ]),
    );

    final commFlatButton = DeriveDidDocumentFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdDeriveDidDocumentEvent(),
      error: (context, err) => Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(err),
        ),
      ),
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.deriveDidDocument()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit SetDidDocument Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.setDidDocuments())
        .thenAnswer((_) async => correctTxResult);

    final bloc = CommercioIdSetDidDocumentsBloc(
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioIdSetDidDocumentsStateLoading>(),
        isA<CommercioIdSetDidDocumentsStateData>(),
        isA<CommercioIdSetDidDocumentsStateLoading>(),
        isA<CommercioIdSetDidDocumentsStateError>(),
      ]),
    );

    final commFlatButton = SetDidDocumentFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdSetDidDocumentsEvent(),
      error: (context, err) => Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(err),
        ),
      ),
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.setDidDocuments()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit SetDidDocument with didDocument', (
    WidgetTester tester,
  ) async {
    when(commercioId.setDidDocuments(
      didDocuments: [correctDidDoc],
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioIdSetDidDocumentsBloc(
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioIdSetDidDocumentsStateLoading>(),
        isA<CommercioIdSetDidDocumentsStateData>(),
      ]),
    );

    final commFlatButton = SetDidDocumentFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdSetDidDocumentsEvent(
        didDocuments: [correctDidDoc],
      ),
      error: (context, err) => Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(err),
        ),
      ),
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit RechargeTumbler Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.hasKeys).thenReturn(false);
    when(commercioId.rechargeTumbler(
      rechargeAmount: [],
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioIdRechargeTumblerBloc(
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioIdRechargedTumblerStateLoading>(),
        isA<CommercioIdRechargedTumblerStateData>(),
        isA<CommercioIdRechargedTumblerStateLoading>(),
        isA<CommercioIdRechargedTumblerStateError>(),
      ]),
    );

    final commFlatButton = RechargeTumblerFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdRechargeTumblerEvent(
        rechargeAmount: [],
      ),
      error: (context, err) => Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(err),
        ),
      ),
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.rechargeTumbler(
      rechargeAmount: [],
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit RechargeTumbler with gas & fee', (
    WidgetTester tester,
  ) async {
    const fee = <StdCoin>[];
    const gas = '';

    when(commercioId.hasKeys).thenReturn(false);
    when(commercioId.rechargeTumbler(
      rechargeAmount: [],
      rechargeFee: fee,
      rechargeGas: gas,
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioIdRechargeTumblerBloc(
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioIdRechargedTumblerStateLoading>(),
        isA<CommercioIdRechargedTumblerStateData>(),
      ]),
    );

    final commFlatButton = RechargeTumblerFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdRechargeTumblerEvent(
        rechargeAmount: [],
        rechargeFee: fee,
        rechargeGas: gas,
      ),
      error: (context, err) => Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(err),
        ),
      ),
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit RequestDidPowerUp Event', (
    WidgetTester tester,
  ) async {
    const amount = <StdCoin>[];
    const pairwiseAddress = '';

    when(commercioId.requestDidPowerUp(
      pairwiseAddress: pairwiseAddress,
      amount: amount,
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioIdRequestDidPowerUpBloc(
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioIdRequestedDidPowerUpStateLoading>(),
        isA<CommercioIdRequestedDidPowerUpStateData>(),
        isA<CommercioIdRequestedDidPowerUpStateLoading>(),
        isA<CommercioIdRequestedDidPowerUpStateError>(),
      ]),
    );

    final commFlatButton = RequestDidPowerUpFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdRequestDidPowerUpEvent(
        amount: amount,
        pairwiseAddress: pairwiseAddress,
      ),
      error: (context, err) => Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(err),
        ),
      ),
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.requestDidPowerUp(
      pairwiseAddress: pairwiseAddress,
      amount: amount,
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });
}
