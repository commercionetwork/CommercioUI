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
  const correctAmount = [StdCoin(amount: '100', denom: 'denom')];
  const correctProof = 'proof';
  const correctUuid = '4ec5eadc-e4da-43aa-b60f-000b5c24c262';
  const correctEncryptionKey = 'encryptionKey';
  final NetworkInfo correctNetworkInfo =
      NetworkInfo(bech32Hrp: 'bech32Hrp', lcdUrl: 'http://lcd-url');
  const String correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  Wallet correctWallet =
      Wallet.derive(correctMnemonic.split(' '), correctNetworkInfo);
  String correctWalletAddress = correctWallet.bech32Address;
  final correctDidPowerUpRequest = RequestDidPowerUp(
    claimantDid: correctWalletAddress,
    amount: correctAmount,
    powerUpProof: correctProof,
    uuid: correctUuid,
    encryptionKey: correctEncryptionKey,
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
    when(commercioId.setDidDocuments(
      didDocuments: [],
    )).thenAnswer((_) async => correctTxResult);

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
      event: () => CommercioIdSetDidDocumentsEvent(
        didDocuments: [],
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

    when(commercioId.setDidDocuments(
      didDocuments: [],
    )).thenThrow(Exception());

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
      amount: [],
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
        amount: [],
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
      amount: [],
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit RechargeTumbler with fee', (
    WidgetTester tester,
  ) async {
    const correctFee = const StdFee(
      amount: [StdCoin(amount: '10', denom: 'denom')],
      gas: '10',
    );

    when(commercioId.hasKeys).thenReturn(false);
    when(commercioId.rechargeTumbler(
      amount: [],
      fee: correctFee,
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
        amount: [],
        fee: correctFee,
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

  testWidgets('Submit DeriveDidPowerUp Event', (
    WidgetTester tester,
  ) async {
    when(commercioId.deriveDidPowerUpRequest(
      pairwiseAddress: correctWalletAddress,
      amount: correctAmount,
    )).thenAnswer((_) async => correctDidPowerUpRequest);

    final bloc = CommercioIdDeriveDidPowerUpRequestBloc(
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioIdDeriveDidPowerUpRequestState>(),
        isA<CommercioIdDeriveDidPowerUpRequestStateData>(),
        isA<CommercioIdDeriveDidPowerUpRequestStateLoading>(),
        isA<CommercioIdDeriveDidPowerUpRequestStateError>(),
      ]),
    );

    final commFlatButton = DeriveDidPowerUpRequestFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdDeriveDidPowerUpRequestEvent(
        pairwiseAddress: correctWalletAddress,
        amount: correctAmount,
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

    when(commercioId.deriveDidPowerUpRequest(
      pairwiseAddress: correctWalletAddress,
      amount: correctAmount,
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
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

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioIdRequestedDidPowerUpsStateLoading>(),
        isA<CommercioIdRequestedDidPowerUpsStateData>(),
        isA<CommercioIdRequestedDidPowerUpsStateLoading>(),
        isA<CommercioIdRequestedDidPowerUpsStateError>(),
      ]),
    );

    final commFlatButton = RequestDidPowerUpFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioIdRequestDidPowerUpsEvent(
        powerUpRequests: [correctDidPowerUpRequest],
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

    when(commercioId.requestDidPowerUps(
      powerUpRequests: [correctDidPowerUpRequest],
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });
}
