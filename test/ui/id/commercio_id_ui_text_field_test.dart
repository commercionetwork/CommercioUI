import 'dart:convert';
import 'dart:io';

import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/material.dart';
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
  const errorText = 'Error';
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

    final commTextField = GenerateKeysTextField(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commTextField,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commTextField), findsOneWidget);

    bloc.add(const CommercioIdGenerateKeysEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioIdGeneratedKeysStateInitial',
      'CommercioIdGeneratedKeysStateLoading',
      'CommercioIdGeneratedKeysStateData',
    ]);

    when(commercioId.generateKeys()).thenThrow(Exception());

    bloc.add(const CommercioIdGenerateKeysEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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

    final commTextField = RestoreKeysTextField(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commTextField,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commTextField), findsOneWidget);

    bloc.add(const CommercioIdRestoreKeysEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioIdRestoredKeysStateInitial',
      'CommercioIdRestoredKeysStateLoading',
      'CommercioIdRestoredKeysStateData',
    ]);

    when(commercioId.restoreKeys()).thenThrow(Exception());

    bloc.add(const CommercioIdRestoreKeysEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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

    final commTextField = DeleteKeysTextField(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commTextField,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commTextField), findsOneWidget);

    bloc.add(const CommercioIdDeleteKeysEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioIdDeletedKeysStateInitial',
      'CommercioIdDeletedKeysStateLoading',
      'CommercioIdDeletedKeysStateData',
    ]);

    when(commercioId.deleteKeys()).thenThrow(Exception());

    bloc.add(const CommercioIdDeleteKeysEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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
    when(commercioId.derivateDidDocument())
        .thenAnswer((_) async => correctDidDoc);

    final bloc = CommercioIdDeriveDidDocumentBloc(
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = DeriveDidDocumentTextField(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commTextField,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commTextField), findsOneWidget);

    bloc.add(const CommercioIdDeriveDidDocumentEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioIdDerivedDidDocumentStateInitial',
      'CommercioIdDerivedDidDocumentStateLoading',
      'CommercioIdDerivedDidDocumentStateData',
    ]);

    when(commercioId.derivateDidDocument()).thenThrow(Exception());

    bloc.add(const CommercioIdDeriveDidDocumentEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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

    final commTextField = SetDidDocumentTextField(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commTextField,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commTextField), findsOneWidget);

    bloc.add(const CommercioIdSetDidDocumentEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioIdSetDidDocumentStateInitial',
      'CommercioIdSetDidDocumentStateLoading',
      'CommercioIdSetDidDocumentStateData'
    ]);

    when(commercioId.setDidDocument()).thenThrow(Exception());

    bloc.add(const CommercioIdSetDidDocumentEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioIdSetDidDocumentStateInitial',
      'CommercioIdSetDidDocumentStateLoading',
      'CommercioIdSetDidDocumentStateData',
      'CommercioIdSetDidDocumentStateLoading',
      'CommercioIdSetDidDocumentStateError',
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

    final commTextField = RechargeTumblerTextField(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commTextField,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commTextField), findsOneWidget);

    bloc.add(const CommercioIdRechargeTumblerEvent(
      rechargeAmount: [],
    ));
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

    bloc.add(const CommercioIdRechargeTumblerEvent(
      rechargeAmount: [],
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioIdRechargedTumblerStateInitial',
      'CommercioIdRechargedTumblerStateLoading',
      'CommercioIdRechargedTumblerStateData',
      'CommercioIdRechargedTumblerStateLoading',
      'CommercioIdRechargedTumblerStateError',
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

    final commTextField = RequestDidPowerUpTextField(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commTextField,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commTextField), findsOneWidget);

    bloc.add(const CommercioIdRequestDidPowerUpEvent(
      pairwiseAddress: pairwiseAddress,
      amount: amount,
    ));
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

    bloc.add(const CommercioIdRequestDidPowerUpEvent(
      pairwiseAddress: pairwiseAddress,
      amount: amount,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioIdRequestedDidPowerUpStateInitial',
      'CommercioIdRequestedDidPowerUpStateLoading',
      'CommercioIdRequestedDidPowerUpStateData',
      'CommercioIdRequestedDidPowerUpStateLoading',
      'CommercioIdRequestedDidPowerUpStateError',
    ]);
  });
}
