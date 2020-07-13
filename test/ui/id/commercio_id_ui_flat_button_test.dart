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
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

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
    expect(states, [
      'CommercioIdGeneratedKeysStateInitial',
      'CommercioIdGeneratedKeysStateLoading',
      'CommercioIdGeneratedKeysStateData',
    ]);

    when(commercioId.generateKeys()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioIdGeneratedKeysStateInitial',
      'CommercioIdGeneratedKeysStateLoading',
      'CommercioIdGeneratedKeysStateData',
      'CommercioIdGeneratedKeysStateLoading',
      'CommercioIdGeneratedKeysStateError',
    ]);
  });

  testWidgets('Submit RestoreKeys Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.hasKeys).thenReturn(false);
    when(commercioId.restoreKeys()).thenAnswer((_) async => correctIdKeysObj);

    final bloc = CommercioIdRestoreKeysBloc(
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

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
    expect(states, [
      'CommercioIdRestoredKeysStateInitial',
      'CommercioIdRestoredKeysStateLoading',
      'CommercioIdRestoredKeysStateData',
    ]);

    when(commercioId.restoreKeys()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioIdRestoredKeysStateInitial',
      'CommercioIdRestoredKeysStateLoading',
      'CommercioIdRestoredKeysStateData',
      'CommercioIdRestoredKeysStateLoading',
      'CommercioIdRestoredKeysStateError',
    ]);
  });

  testWidgets('Submit DeleteKeys Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.deleteKeys()).thenAnswer((_) async => correctIdKeysObj);

    final bloc = CommercioIdDeleteKeysBloc(
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

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
    expect(states, [
      'CommercioIdDeletedKeysStateInitial',
      'CommercioIdDeletedKeysStateLoading',
      'CommercioIdDeletedKeysStateData',
    ]);

    when(commercioId.deleteKeys()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioIdDeletedKeysStateInitial',
      'CommercioIdDeletedKeysStateLoading',
      'CommercioIdDeletedKeysStateData',
      'CommercioIdDeletedKeysStateLoading',
      'CommercioIdDeletedKeysStateError',
    ]);
  });

  testWidgets('Submit DeriveDidDocument Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.deriveDidDocument())
        .thenAnswer((_) async => correctDidDoc);

    final bloc = CommercioIdDeriveDidDocumentBloc(
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

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
    expect(states, [
      'CommercioIdDerivedDidDocumentStateInitial',
      'CommercioIdDerivedDidDocumentStateLoading',
      'CommercioIdDerivedDidDocumentStateData',
    ]);

    when(commercioId.deriveDidDocument()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioIdDerivedDidDocumentStateInitial',
      'CommercioIdDerivedDidDocumentStateLoading',
      'CommercioIdDerivedDidDocumentStateData',
      'CommercioIdDerivedDidDocumentStateLoading',
      'CommercioIdDerivedDidDocumentStateError',
    ]);
  });

  testWidgets('Submit SetDidDocument Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.setDidDocument()).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioIdSetDidDocumentBloc(
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commFlatButton = SetDidDocumentFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdSetDidDocumentEvent(),
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
    expect(states, [
      'CommercioIdSetDidDocumentStateInitial',
      'CommercioIdSetDidDocumentStateLoading',
      'CommercioIdSetDidDocumentStateData'
    ]);

    when(commercioId.setDidDocument()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioIdSetDidDocumentStateInitial',
      'CommercioIdSetDidDocumentStateLoading',
      'CommercioIdSetDidDocumentStateData',
      'CommercioIdSetDidDocumentStateLoading',
      'CommercioIdSetDidDocumentStateError',
    ]);
  });

  testWidgets('Submit SetDidDocument with didDocument', (
    WidgetTester tester,
  ) async {
    when(commercioId.setDidDocument(
      didDocument: correctDidDoc,
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioIdSetDidDocumentBloc(
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commFlatButton = SetDidDocumentFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdSetDidDocumentEvent(
        didDocument: correctDidDoc,
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
    expect(states, [
      'CommercioIdSetDidDocumentStateInitial',
      'CommercioIdSetDidDocumentStateLoading',
      'CommercioIdSetDidDocumentStateData'
    ]);
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
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

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
    expect(states, [
      'CommercioIdRechargedTumblerStateInitial',
      'CommercioIdRechargedTumblerStateLoading',
      'CommercioIdRechargedTumblerStateData',
    ]);

    when(commercioId.rechargeTumbler(
      rechargeAmount: [],
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioIdRechargedTumblerStateInitial',
      'CommercioIdRechargedTumblerStateLoading',
      'CommercioIdRechargedTumblerStateData',
      'CommercioIdRechargedTumblerStateLoading',
      'CommercioIdRechargedTumblerStateError',
    ]);
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
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

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
    expect(states, [
      'CommercioIdRechargedTumblerStateInitial',
      'CommercioIdRechargedTumblerStateLoading',
      'CommercioIdRechargedTumblerStateData',
    ]);
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
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

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
    expect(states, [
      'CommercioIdRequestedDidPowerUpStateInitial',
      'CommercioIdRequestedDidPowerUpStateLoading',
      'CommercioIdRequestedDidPowerUpStateData',
    ]);

    when(commercioId.requestDidPowerUp(
      pairwiseAddress: pairwiseAddress,
      amount: amount,
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioIdRequestedDidPowerUpStateInitial',
      'CommercioIdRequestedDidPowerUpStateLoading',
      'CommercioIdRequestedDidPowerUpStateData',
      'CommercioIdRequestedDidPowerUpStateLoading',
      'CommercioIdRequestedDidPowerUpStateError',
    ]);
  });
}
