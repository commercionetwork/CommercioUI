import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/sacco.dart';

class StatefulCommercioDocsMock extends Mock implements StatefulCommercioDocs {}

class StatefulCommercioIdMock extends Mock implements StatefulCommercioId {}

void main() {
  const childText = 'Child';
  const loadingText = 'Loading';
  const errorText = 'Error';
  final correctMetadata = CommercioDocMetadata(
    contentUri: 'contentUri',
    schema: CommercioDocMetadataSchema(
      uri: 'metadataSchemaUri',
      version: '1.0.0',
    ),
  );
  final String correctRecipientAddress =
      'did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u44';
  final List<String> recipients = [correctRecipientAddress];
  const String correctDocId = '4ec5eadc-e4da-43aa-b60f-000b5c24c262';
  const String correctTxHash =
      'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  final correctTxResult = TransactionResult(hash: '', success: true);
  final commercioDocs = StatefulCommercioDocsMock();
  final commercioId = StatefulCommercioIdMock();

  testWidgets('Submit ShareDocument Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.shareDocument(
      metadata: correctMetadata,
      recipients: recipients,
      docId: null,
      doSign: null,
      checksum: null,
      contentUri: null,
      fee: null,
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioDocsShareDocumentBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = ShareDocumentTextField(
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

    bloc.add(CommercioDocsShareDocumentEvent(
      metadata: correctMetadata,
      recipients: recipients,
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioDocsSharedDocumentStateInitial',
      'CommercioDocsSharedDocumentStateLoading',
      'CommercioDocsSharedDocumentStateData',
    ]);

    when(commercioDocs.shareDocument(
      metadata: correctMetadata,
      recipients: recipients,
      docId: null,
      doSign: null,
      checksum: null,
      contentUri: null,
      fee: null,
    )).thenThrow(Exception());

    bloc.add(CommercioDocsShareDocumentEvent(
      metadata: correctMetadata,
      recipients: recipients,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioDocsSharedDocumentStateInitial',
      'CommercioDocsSharedDocumentStateLoading',
      'CommercioDocsSharedDocumentStateData',
      'CommercioDocsSharedDocumentStateLoading',
      'CommercioDocsSharedDocumentStateError',
    ]);
  });

  testWidgets('Submit ShareEncryptedDocument Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.shareEncryptedDocument(
      metadata: correctMetadata,
      recipients: recipients,
      encryptedData: [],
      aesKey: null,
      docId: null,
      doSign: null,
      checksum: null,
      contentUri: null,
      fee: null,
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioDocsShareEncryptedDocumentBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = ShareEncryptedDocumentTextField(
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

    bloc.add(CommercioDocsShareEncryptedDocumentEvent(
      metadata: correctMetadata,
      recipients: recipients,
      encryptedData: [],
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioDocsSharedEncryptedDocumentStateInitial',
      'CommercioDocsSharedEncryptedDocumentStateLoading',
      'CommercioDocsSharedEncryptedDocumentStateData',
    ]);

    when(commercioDocs.shareEncryptedDocument(
      metadata: correctMetadata,
      recipients: recipients,
      encryptedData: [],
      aesKey: null,
      docId: null,
      doSign: null,
      checksum: null,
      contentUri: null,
      fee: null,
    )).thenThrow(Exception());

    bloc.add(CommercioDocsShareEncryptedDocumentEvent(
      metadata: correctMetadata,
      recipients: recipients,
      encryptedData: [],
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioDocsSharedEncryptedDocumentStateInitial',
      'CommercioDocsSharedEncryptedDocumentStateLoading',
      'CommercioDocsSharedEncryptedDocumentStateData',
      'CommercioDocsSharedEncryptedDocumentStateLoading',
      'CommercioDocsSharedEncryptedDocumentStateError',
    ]);
  });

  testWidgets('Submit SendReceipt Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.sendReceipt(
      docId: correctDocId,
      recipient: correctRecipientAddress,
      txHash: correctTxHash,
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioDocsSendReceiptBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = SendReceiptTextField(
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

    bloc.add(CommercioDocsSendReceiptEvent(
      docId: correctDocId,
      recipient: correctRecipientAddress,
      txHash: correctTxHash,
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioDocsSentReceiptStateInitial',
      'CommercioDocsSentReceiptStateLoading',
      'CommercioDocsSentReceiptStateData',
    ]);

    when(commercioDocs.sendReceipt(
      docId: correctDocId,
      recipient: correctRecipientAddress,
      txHash: correctTxHash,
    )).thenThrow(Exception());

    bloc.add(CommercioDocsSendReceiptEvent(
      docId: correctDocId,
      recipient: correctRecipientAddress,
      txHash: correctTxHash,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioDocsSentReceiptStateInitial',
      'CommercioDocsSentReceiptStateLoading',
      'CommercioDocsSentReceiptStateData',
      'CommercioDocsSentReceiptStateLoading',
      'CommercioDocsSentReceiptStateError',
    ]);
  });

  testWidgets('Submit SentDocuments Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.sentDocuments()).thenAnswer((_) async => []);

    final bloc = CommercioDocsSentDocumentsBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = SentDocumentsTextField(
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

    bloc.add(const CommercioDocsSentDocumentsEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioDocsSentDocumentsStateInitial',
      'CommercioDocsSentDocumentsStateLoading',
      'CommercioDocsSentDocumentsStateData',
    ]);

    when(commercioDocs.sentDocuments()).thenThrow(Exception());

    bloc.add(const CommercioDocsSentDocumentsEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioDocsSentDocumentsStateInitial',
      'CommercioDocsSentDocumentsStateLoading',
      'CommercioDocsSentDocumentsStateData',
      'CommercioDocsSentDocumentsStateLoading',
      'CommercioDocsSentDocumentsStateError',
    ]);
  });

  testWidgets('Submit ReceivedDocuments Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.receivedDocuments()).thenAnswer((_) async => []);

    final bloc = CommercioDocsReceivedDocumentsBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = ReceivedDocumentsTextField(
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

    bloc.add(const CommercioDocsReceivedDocumentsEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioDocsReceivedDocumentsStateInitial',
      'CommercioDocsReceivedDocumentsStateLoading',
      'CommercioDocsReceivedDocumentsStateData',
    ]);

    when(commercioDocs.receivedDocuments()).thenThrow(Exception());

    bloc.add(const CommercioDocsReceivedDocumentsEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioDocsReceivedDocumentsStateInitial',
      'CommercioDocsReceivedDocumentsStateLoading',
      'CommercioDocsReceivedDocumentsStateData',
      'CommercioDocsReceivedDocumentsStateLoading',
      'CommercioDocsReceivedDocumentsStateError',
    ]);
  });

  testWidgets('Submit SentReceipts Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.sentReceipts()).thenAnswer((_) async => []);

    final bloc = CommercioDocsSentReceiptsBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = SentReceiptsTextField(
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

    bloc.add(const CommercioDocsSentReceiptsEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioDocsSentReceiptsStateInitial',
      'CommercioDocsSentReceiptsStateLoading',
      'CommercioDocsSentReceiptsStateData',
    ]);

    when(commercioDocs.sentReceipts()).thenThrow(Exception());

    bloc.add(const CommercioDocsSentReceiptsEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioDocsSentReceiptsStateInitial',
      'CommercioDocsSentReceiptsStateLoading',
      'CommercioDocsSentReceiptsStateData',
      'CommercioDocsSentReceiptsStateLoading',
      'CommercioDocsSentReceiptsStateError',
    ]);
  });

  testWidgets('Submit ReceivedReceipts Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.receivedReceipts()).thenAnswer((_) async => []);

    final bloc = CommercioDocsReceivedReceiptsBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = ReceivedReceiptsTextField(
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

    bloc.add(const CommercioDocsReceivedReceiptsEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioDocsReceivedReceiptsStateInitial',
      'CommercioDocsReceivedReceiptsStateLoading',
      'CommercioDocsReceivedReceiptsStateData',
    ]);

    when(commercioDocs.receivedReceipts()).thenThrow(Exception());

    bloc.add(const CommercioDocsReceivedReceiptsEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioDocsReceivedReceiptsStateInitial',
      'CommercioDocsReceivedReceiptsStateLoading',
      'CommercioDocsReceivedReceiptsStateData',
      'CommercioDocsReceivedReceiptsStateLoading',
      'CommercioDocsReceivedReceiptsStateError',
    ]);
  });
}
