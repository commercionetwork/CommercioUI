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
  const correctAmount = [StdCoin(amount: '100', denom: 'denom')];
  const correctProof = 'proof';
  const correctUuid = '4ec5eadc-e4da-43aa-b60f-000b5c24c262';
  const correctEncryptionKey = 'encryptionKey';
  final correctNetworkInfo =
      NetworkInfo(bech32Hrp: 'bech32Hrp', lcdUrl: 'http://lcd-url');
  const correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  final correctWallet =
      Wallet.derive(correctMnemonic.split(' '), correctNetworkInfo);
  final correctWalletAddress = correctWallet.bech32Address;
  final correctDidPowerUpRequest = RequestDidPowerUp(
    claimantDid: correctWalletAddress,
    amount: correctAmount,
    powerUpProof: correctProof,
    uuid: correctUuid,
    encryptionKey: correctEncryptionKey,
  );

  testWidgets('Submit ShareDocument Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.hasKeys).thenReturn(false);
    when(commercioId.generateKeys()).thenAnswer((_) async => correctIdKeysObj);

    final bloc = CommercioIdGenerateKeysBloc(
      commercioId: commercioId,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioIdGeneratedKeysStateLoading>(),
        isA<CommercioIdGeneratedKeysStateData>(),
        isA<CommercioIdGeneratedKeysStateLoading>(),
        isA<CommercioIdGeneratedKeysStateError>(),
      ]),
    );

    final commText = GenerateKeysText(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commText,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commText), findsOneWidget);

    bloc.add(const CommercioIdGenerateKeysEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.generateKeys()).thenThrow(Exception());

    bloc.add(const CommercioIdGenerateKeysEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit RestoreKeys Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.hasKeys).thenReturn(false);
    when(commercioId.restoreKeys()).thenAnswer((_) async => correctIdKeysObj);

    final bloc = CommercioIdRestoreKeysBloc(
      commercioId: commercioId,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioIdRestoredKeysStateLoading>(),
        isA<CommercioIdRestoredKeysStateData>(),
        isA<CommercioIdRestoredKeysStateLoading>(),
        isA<CommercioIdRestoredKeysStateError>(),
      ]),
    );

    final commText = RestoreKeysText(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commText,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commText), findsOneWidget);

    bloc.add(const CommercioIdRestoreKeysEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.restoreKeys()).thenThrow(Exception());

    bloc.add(const CommercioIdRestoreKeysEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit DeleteKeys Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.deleteKeys()).thenAnswer((_) async => correctIdKeysObj);

    final bloc = CommercioIdDeleteKeysBloc(
      commercioId: commercioId,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioIdDeletedKeysStateLoading>(),
        isA<CommercioIdDeletedKeysStateData>(),
        isA<CommercioIdDeletedKeysStateLoading>(),
        isA<CommercioIdDeletedKeysStateError>(),
      ]),
    );

    final commText = DeleteKeysText(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commText,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commText), findsOneWidget);

    bloc.add(const CommercioIdDeleteKeysEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.deleteKeys()).thenThrow(Exception());

    bloc.add(const CommercioIdDeleteKeysEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit DeriveDidDocument Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.deriveDidDocument())
        .thenAnswer((_) async => correctDidDoc);

    final bloc = CommercioIdDeriveDidDocumentBloc(
      commercioId: commercioId,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioIdDerivedDidDocumentStateLoading>(),
        isA<CommercioIdDerivedDidDocumentStateData>(),
        isA<CommercioIdDerivedDidDocumentStateLoading>(),
        isA<CommercioIdDerivedDidDocumentStateError>(),
      ]),
    );

    final commText = DeriveDidDocumentText(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commText,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commText), findsOneWidget);

    bloc.add(const CommercioIdDeriveDidDocumentEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.deriveDidDocument()).thenThrow(Exception());

    bloc.add(const CommercioIdDeriveDidDocumentEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit SetDidDocument Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.setDidDocuments(
      didDocuments: [],
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioIdSetDidDocumentsBloc(
      commercioId: commercioId,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioIdSetDidDocumentsStateLoading>(),
        isA<CommercioIdSetDidDocumentsStateData>(),
        isA<CommercioIdSetDidDocumentsStateLoading>(),
        isA<CommercioIdSetDidDocumentsStateError>(),
      ]),
    );

    final commText = SetDidDocumentText(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commText,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commText), findsOneWidget);

    bloc.add(const CommercioIdSetDidDocumentsEvent(
      didDocuments: [],
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.setDidDocuments(
      didDocuments: [],
    )).thenThrow(Exception());

    bloc.add(const CommercioIdSetDidDocumentsEvent(
      didDocuments: [],
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit RechargeTumbler Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.hasKeys).thenReturn(false);
    when(commercioId.rechargeTumbler(
      amount: [],
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioIdRechargeTumblerBloc(
      commercioId: commercioId,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioIdRechargedTumblerStateLoading>(),
        isA<CommercioIdRechargedTumblerStateData>(),
        isA<CommercioIdRechargedTumblerStateLoading>(),
        isA<CommercioIdRechargedTumblerStateError>(),
      ]),
    );

    final commText = RechargeTumblerText(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commText,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commText), findsOneWidget);

    bloc.add(const CommercioIdRechargeTumblerEvent(
      amount: [],
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.rechargeTumbler(
      amount: [],
    )).thenThrow(Exception());

    bloc.add(const CommercioIdRechargeTumblerEvent(
      amount: [],
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit DeriveDidPowerUp request Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.deriveDidPowerUpRequest(
      pairwiseAddress: correctWalletAddress,
      amount: correctAmount,
    )).thenAnswer((_) async => correctDidPowerUpRequest);

    final bloc = CommercioIdDeriveDidPowerUpRequestBloc(
      commercioId: commercioId,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioIdDeriveDidPowerUpRequestStateLoading>(),
        isA<CommercioIdDeriveDidPowerUpRequestStateData>(),
        isA<CommercioIdDeriveDidPowerUpRequestStateLoading>(),
        isA<CommercioIdDeriveDidPowerUpRequestStateError>(),
      ]),
    );

    final commText = DeriveDidPowerUpRequestText(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commText,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commText), findsOneWidget);

    bloc.add(CommercioIdDeriveDidPowerUpRequestEvent(
      pairwiseAddress: correctWalletAddress,
      amount: correctAmount,
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.deriveDidPowerUpRequest(
      pairwiseAddress: correctWalletAddress,
      amount: correctAmount,
    )).thenThrow(Exception());

    bloc.add(CommercioIdDeriveDidPowerUpRequestEvent(
      pairwiseAddress: correctWalletAddress,
      amount: correctAmount,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit RequestDidPowerUp Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.requestDidPowerUps(
      powerUpRequests: [correctDidPowerUpRequest],
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioIdRequestDidPowerUpsBloc(
      commercioId: commercioId,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioIdRequestedDidPowerUpsStateLoading>(),
        isA<CommercioIdRequestedDidPowerUpsStateData>(),
        isA<CommercioIdRequestedDidPowerUpsStateLoading>(),
        isA<CommercioIdRequestedDidPowerUpsStateError>(),
      ]),
    );

    final commText = RequestDidPowerUpText(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => childText,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commText,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    expect(find.byWidget(commText), findsOneWidget);

    bloc.add(CommercioIdRequestDidPowerUpsEvent(
      powerUpRequests: [correctDidPowerUpRequest],
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioId.requestDidPowerUps(
      powerUpRequests: [correctDidPowerUpRequest],
    )).thenThrow(Exception());

    bloc.add(CommercioIdRequestDidPowerUpsEvent(
      powerUpRequests: [correctDidPowerUpRequest],
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });
}
