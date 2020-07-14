import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/sacco.dart';

class StatefulCommercioDocsMock extends Mock implements StatefulCommercioDocs {}

class StatefulCommercioIdMock extends Mock implements StatefulCommercioId {}

void main() {
  const childText = 'Child';
  const loadingText = 'Loading';
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

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioDocsSharedDocumentStateLoading>(),
        isA<CommercioDocsSharedDocumentStateData>(),
        isA<CommercioDocsSharedDocumentStateLoading>(),
        isA<CommercioDocsSharedDocumentStateError>(),
      ]),
    );

    final commFlatButton = ShareDocumentFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioDocsShareDocumentEvent(
        recipients: recipients,
        metadata: correctMetadata,
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

    when(commercioDocs.shareDocument(
      metadata: correctMetadata,
      recipients: recipients,
      docId: null,
      doSign: null,
      checksum: null,
      contentUri: null,
      fee: null,
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
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

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioDocsSharedEncryptedDocumentStateLoading>(),
        isA<CommercioDocsSharedEncryptedDocumentStateData>(),
        isA<CommercioDocsSharedEncryptedDocumentStateLoading>(),
        isA<CommercioDocsSharedEncryptedDocumentStateError>(),
      ]),
    );

    final commFlatButton = ShareEncryptedDocumentFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioDocsShareEncryptedDocumentEvent(
        recipients: recipients,
        metadata: correctMetadata,
        encryptedData: [],
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

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
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

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioDocsSentReceiptStateLoading>(),
        isA<CommercioDocsSentReceiptStateData>(),
        isA<CommercioDocsSentReceiptStateLoading>(),
        isA<CommercioDocsSentReceiptStateError>(),
      ]),
    );

    final commFlatButton = SendReceiptFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioDocsSendReceiptEvent(
        docId: correctDocId,
        recipient: correctRecipientAddress,
        txHash: correctTxHash,
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

    when(commercioDocs.sendReceipt(
      docId: correctDocId,
      recipient: correctRecipientAddress,
      txHash: correctTxHash,
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit SentDocuments Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.sentDocuments(walletAddress: ''))
        .thenAnswer((_) async => []);

    final bloc = CommercioDocsSentDocumentsBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioDocsSentDocumentsStateLoading>(),
        isA<CommercioDocsSentDocumentsStateData>(),
        isA<CommercioDocsSentDocumentsStateLoading>(),
        isA<CommercioDocsSentDocumentsStateError>(),
      ]),
    );

    final commFlatButton = SentDocumentsFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioDocsSentDocumentsEvent(walletAddress: ''),
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

    when(commercioDocs.sentDocuments(walletAddress: '')).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit ReceivedDocuments Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.receivedDocuments(walletAddress: ''))
        .thenAnswer((_) async => []);

    final bloc = CommercioDocsReceivedDocumentsBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioDocsReceivedDocumentsStateLoading>(),
        isA<CommercioDocsReceivedDocumentsStateData>(),
        isA<CommercioDocsReceivedDocumentsStateLoading>(),
        isA<CommercioDocsReceivedDocumentsStateError>(),
      ]),
    );

    final commFlatButton = ReceivedDocumentsFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioDocsReceivedDocumentsEvent(walletAddress: ''),
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

    when(commercioDocs.receivedDocuments(walletAddress: ''))
        .thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit SentReceipts Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.sentReceipts(walletAddress: ''))
        .thenAnswer((_) async => []);

    final bloc = CommercioDocsSentReceiptsBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioDocsSentReceiptsStateLoading>(),
        isA<CommercioDocsSentReceiptsStateData>(),
        isA<CommercioDocsSentReceiptsStateLoading>(),
        isA<CommercioDocsSentReceiptsStateError>(),
      ]),
    );

    final commFlatButton = SentReceiptsFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioDocsSentReceiptsEvent(walletAddress: ''),
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

    when(commercioDocs.sentReceipts(walletAddress: '')).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit ReceivedReceipts Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.receivedReceipts(walletAddress: ''))
        .thenAnswer((_) async => []);

    final bloc = CommercioDocsReceivedReceiptsBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioDocsReceivedReceiptsStateLoading>(),
        isA<CommercioDocsReceivedReceiptsStateData>(),
        isA<CommercioDocsReceivedReceiptsStateLoading>(),
        isA<CommercioDocsReceivedReceiptsStateError>(),
      ]),
    );

    final commFlatButton = ReceivedReceiptsFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioDocsReceivedReceiptsEvent(walletAddress: ''),
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

    when(commercioDocs.receivedReceipts(walletAddress: ''))
        .thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });
}
