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
  final correctRecipientAddress =
      'did:com:1u70n4eysyuf08wcckwrs2atcaqw5d025w39u44';
  final recipients = [correctRecipientAddress];
  const correctDocId = '4ec5eadc-e4da-43aa-b60f-000b5c24c262';
  const correctTxHash =
      'EBD5B9FA2499BDB9E58D78EA88A017C0B7986F9AB1CDD704A3D5D88DEE6C9621';
  final correctTxResult = TransactionResult(hash: '', success: true);
  final commercioDocs = StatefulCommercioDocsMock();
  final commercioId = StatefulCommercioIdMock();
  const correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  final correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'http://lcd-url',
  );
  final correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  final correctWalletAddress = correctWallet.bech32Address;
  final correctCommercioDoc = CommercioDoc(
    uuid: correctDocId,
    metadata: correctMetadata,
    recipientDids: recipients,
    senderDid: correctWalletAddress,
  );
  const correctProof = 'proof';
  final correctDocReceipt = CommercioDocReceipt(
    uuid: correctDocId,
    senderDid: correctWalletAddress,
    recipientDid: correctWalletAddress,
    txHash: correctTxHash,
    documentUuid: correctDocId,
    proof: correctProof,
  );

  testWidgets('Submit DeriveDocument Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.deriveCommercioDocument(
      metadata: correctMetadata,
      recipients: recipients,
      encryptedData: [],
      aesKey: null,
      docId: null,
      doSign: null,
      checksum: null,
      contentUri: null,
    )).thenAnswer((_) async => correctCommercioDoc);

    final bloc = CommercioDocsDeriveDocumentBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioDocsDeriveDocumentStateLoading>(),
        isA<CommercioDocsDeriveDocumentStateData>(),
        isA<CommercioDocsDeriveDocumentStateLoading>(),
        isA<CommercioDocsDeriveDocumentStateError>(),
      ]),
    );

    final commText = DeriveDocumentText(
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

    bloc.add(CommercioDocsDeriveDocumentEvent(
      metadata: correctMetadata,
      recipients: recipients,
      encryptedData: [],
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioDocs.deriveCommercioDocument(
      metadata: correctMetadata,
      recipients: recipients,
      encryptedData: [],
      aesKey: null,
      docId: null,
      doSign: null,
      checksum: null,
      contentUri: null,
    )).thenThrow(Exception());

    bloc.add(CommercioDocsDeriveDocumentEvent(
      metadata: correctMetadata,
      recipients: recipients,
      encryptedData: [],
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit ShareDocuments Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.shareDocuments(
      commercioDocs: [correctCommercioDoc],
      fee: null,
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioDocsShareDocumentsBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioDocsSharedDocumentsStateLoading>(),
        isA<CommercioDocsSharedDocumentsStateData>(),
        isA<CommercioDocsSharedDocumentsStateLoading>(),
        isA<CommercioDocsSharedDocumentsStateError>(),
      ]),
    );

    final commText = ShareDocumentsText(
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

    bloc.add(CommercioDocsShareDocumentsEvent(
      commercioDocs: [correctCommercioDoc],
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioDocs.shareDocuments(
      commercioDocs: [correctCommercioDoc],
      fee: null,
    )).thenThrow(Exception());

    bloc.add(CommercioDocsShareDocumentsEvent(
      commercioDocs: [correctCommercioDoc],
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit DeriveReceipt Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.deriveReceipt(
      documentId: correctDocId,
      recipient: correctRecipientAddress,
      txHash: correctTxHash,
      proof: correctProof,
    )).thenReturn(correctDocReceipt);

    final bloc = CommercioDocsDeriveReceiptBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioDocsDeriveReceiptStateLoading>(),
        isA<CommercioDocsDeriveReceiptStateData>(),
        isA<CommercioDocsDeriveReceiptStateLoading>(),
        isA<CommercioDocsDeriveReceiptStateError>(),
      ]),
    );

    final commTextField = DeriveReceiptText(
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

    bloc.add(CommercioDocsDeriveReceiptEvent(
      documentId: correctDocId,
      recipient: correctRecipientAddress,
      txHash: correctTxHash,
      proof: correctProof,
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioDocs.deriveReceipt(
      documentId: correctDocId,
      recipient: correctRecipientAddress,
      txHash: correctTxHash,
      proof: correctProof,
    )).thenThrow(Exception());

    bloc.add(CommercioDocsDeriveReceiptEvent(
      documentId: correctDocId,
      recipient: correctRecipientAddress,
      txHash: correctTxHash,
      proof: correctProof,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit SendReceipt Event', (
    WidgetTester tester,
  ) async {
    when(commercioDocs.sendReceipts(
      commercioDocReceipts: [correctDocReceipt],
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioDocsSendReceiptsBloc(
      commercioDocs: commercioDocs,
      commercioId: commercioId,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioDocsSentReceiptStateLoading>(),
        isA<CommercioDocsSentReceiptStateData>(),
        isA<CommercioDocsSentReceiptStateLoading>(),
        isA<CommercioDocsSentReceiptStateError>(),
      ]),
    );

    final commText = SendReceiptsText(
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

    bloc.add(CommercioDocsSendReceiptsEvent(
      commercioDocReceipts: [correctDocReceipt],
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioDocs.sendReceipts(
      commercioDocReceipts: [correctDocReceipt],
    )).thenThrow(Exception());

    bloc.add(CommercioDocsSendReceiptsEvent(
      commercioDocReceipts: [correctDocReceipt],
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioDocsSentDocumentsStateLoading>(),
        isA<CommercioDocsSentDocumentsStateData>(),
        isA<CommercioDocsSentDocumentsStateLoading>(),
        isA<CommercioDocsSentDocumentsStateError>(),
      ]),
    );

    final commText = SentDocumentsText(
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

    bloc.add(const CommercioDocsSentDocumentsEvent(walletAddress: ''));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioDocs.sentDocuments(walletAddress: '')).thenThrow(Exception());

    bloc.add(const CommercioDocsSentDocumentsEvent(walletAddress: ''));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioDocsReceivedDocumentsStateLoading>(),
        isA<CommercioDocsReceivedDocumentsStateData>(),
        isA<CommercioDocsReceivedDocumentsStateLoading>(),
        isA<CommercioDocsReceivedDocumentsStateError>(),
      ]),
    );

    final commText = ReceivedDocumentsText(
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

    bloc.add(const CommercioDocsReceivedDocumentsEvent(walletAddress: ''));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioDocs.receivedDocuments(walletAddress: ''))
        .thenThrow(Exception());

    bloc.add(const CommercioDocsReceivedDocumentsEvent(walletAddress: ''));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioDocsSentReceiptsStateLoading>(),
        isA<CommercioDocsSentReceiptsStateData>(),
        isA<CommercioDocsSentReceiptsStateLoading>(),
        isA<CommercioDocsSentReceiptsStateError>(),
      ]),
    );

    final commText = SentReceiptsText(
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

    bloc.add(const CommercioDocsSentReceiptsEvent(walletAddress: ''));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioDocs.sentReceipts(walletAddress: '')).thenThrow(Exception());

    bloc.add(const CommercioDocsSentReceiptsEvent(walletAddress: ''));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioDocsReceivedReceiptsStateLoading>(),
        isA<CommercioDocsReceivedReceiptsStateData>(),
        isA<CommercioDocsReceivedReceiptsStateLoading>(),
        isA<CommercioDocsReceivedReceiptsStateError>(),
      ]),
    );

    final commText = ReceivedReceiptsText(
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

    bloc.add(const CommercioDocsReceivedReceiptsEvent(walletAddress: ''));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioDocs.receivedReceipts(walletAddress: ''))
        .thenThrow(Exception());

    bloc.add(const CommercioDocsReceivedReceiptsEvent(walletAddress: ''));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });
}
