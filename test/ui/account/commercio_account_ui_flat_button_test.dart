import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/sacco.dart';

class StatefulCommercioAccountMock extends Mock
    implements StatefulCommercioAccount {}

void main() {
  const childText = 'Child';
  const loadingText = 'Loading';
  final correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'lcdUrl',
  );
  const correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  final correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  final correctWalletAddress = correctWallet.bech32Address;
  final commercioAccount = StatefulCommercioAccountMock();
  final correctWalletWithMnemonic = WalletWithMnemonic(
    wallet: correctWallet,
    mnemonic: correctMnemonic,
  );

  testWidgets('Submit GenerateWallet Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.generateNewWallet())
        .thenAnswer((_) async => correctWalletWithMnemonic);
    when(commercioAccount.hasWallet).thenReturn(false);
    when(commercioAccount.hasWalletAddress).thenReturn(false);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountGenerateWalletBloc(
      commercioAccount: commercioAccount,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioAccountGenerateWalletLoading>(),
        isA<CommercioAccountGenerateWalletData>(),
        isA<CommercioAccountGenerateWalletLoading>(),
        isA<CommercioAccountGenerateWalletError>(),
      ]),
    );

    final commFlatButton = GenerateWalletFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioAccountGenerateWalletEvent(),
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

    when(commercioAccount.generateNewWallet()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit RestoreWallet Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.restoreWallet())
        .thenAnswer((_) async => correctWalletWithMnemonic);
    when(commercioAccount.hasWallet).thenReturn(false);
    when(commercioAccount.hasWalletAddress).thenReturn(false);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountRestoreWalletBloc(
      commercioAccount: commercioAccount,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioAccountRestoredWalletStateLoading>(),
        isA<CommercioAccountRestoredWalletStateData>(),
        isA<CommercioAccountRestoredWalletStateLoading>(),
        isA<CommercioAccountRestoredWalletStateError>(),
      ]),
    );

    final commFlatButton = RestoreWalletFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioAccountRestoreWalletEvent(),
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

    when(commercioAccount.restoreWallet()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit RestoreWallet with mnemonic', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.generateNewWallet(mnemonic: ''))
        .thenAnswer((_) async => correctWalletWithMnemonic);
    when(commercioAccount.hasWallet).thenReturn(false);
    when(commercioAccount.hasWalletAddress).thenReturn(false);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountRestoreWalletBloc(
      commercioAccount: commercioAccount,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioAccountRestoredWalletStateLoading>(),
        isA<CommercioAccountRestoredWalletStateData>(),
      ]),
    );

    final commFlatButton = RestoreWalletFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioAccountRestoreWalletEvent(mnemonic: ''),
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

  testWidgets('Submit RequestFreeTokens Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.requestFreeTokens())
        .thenAnswer((_) async => AccountRequestSuccess(''));
    when(commercioAccount.hasWallet).thenReturn(false);
    when(commercioAccount.hasWalletAddress).thenReturn(false);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountRequestFreeTokensBloc(
      commercioAccount: commercioAccount,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioAccountFreeTokensStateLoading>(),
        isA<CommercioAccountFreeTokensStateData>(),
        isA<CommercioAccountFreeTokensStateLoading>(),
        isA<CommercioAccountFreeTokensStateError>(),
      ]),
    );

    final commFlatButton = RequestFreeTokensFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioAccountRequestFreeTokensEvent(),
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

    when(commercioAccount.requestFreeTokens()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit CheckBalance Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.checkAccountBalance()).thenAnswer((_) async => []);
    when(commercioAccount.hasWallet).thenReturn(false);
    when(commercioAccount.hasWalletAddress).thenReturn(false);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountCheckBalanceBloc(
      commercioAccount: commercioAccount,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioAccountBalanceStateLoading>(),
        isA<CommercioAccountBalanceStateData>(),
        isA<CommercioAccountBalanceStateLoading>(),
        isA<CommercioAccountBalanceStateError>(),
      ]),
    );

    final commFlatButton = CheckBalanceFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioAccountCheckBalanceEvent(),
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

    when(commercioAccount.checkAccountBalance()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit SendTokens Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.sendTokens(
      recipientAddress: '',
      amount: [],
    )).thenAnswer((_) async => TransactionResult(
          success: true,
          hash: '',
        ));
    when(commercioAccount.hasWallet).thenReturn(false);
    when(commercioAccount.hasWalletAddress).thenReturn(false);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountSendTokensBloc(
      commercioAccount: commercioAccount,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioAccountSentTokensStateLoading>(),
        isA<CommercioAccountSentTokensStateData>(),
        isA<CommercioAccountSentTokensStateLoading>(),
        isA<CommercioAccountSentTokensStateError>(),
      ]),
    );

    final commFlatButton = SendTokensFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioAccountSendTokensEvent(
        amount: [],
        recipientAddress: '',
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

    when(commercioAccount.sendTokens(
      recipientAddress: '',
      amount: [],
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit GenerateQr Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.hasWalletAddress).thenReturn(true);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountGenerateQrBloc(
      commercioAccount: commercioAccount,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioAccountQrStateLoading>(),
        isA<CommercioAccountQrStateData>(),
        isA<CommercioAccountQrStateLoading>(),
        isA<CommercioAccountQrStateError>(),
      ]),
    );

    final commFlatButton = GenerateQrFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioAccountGenerateQrEvent(),
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

    when(commercioAccount.walletAddress).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit GeneratePairwiseWallet Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.generatePairwiseWallet(
      lastDerivationPathSegment: '1',
    )).thenAnswer((_) async => correctWallet);

    final bloc = CommercioAccountGeneratePairwiseWalletBloc(
      commercioAccount: commercioAccount,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioAccountPaiwiseWalletStateLoading>(),
        isA<CommercioAccountPaiwiseWalletStateData>(),
        isA<CommercioAccountPaiwiseWalletStateLoading>(),
        isA<CommercioAccountPaiwiseWalletStateError>(),
      ]),
    );

    final commFlatButton = GeneratePairwiseWalletFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioAccountGeneratePairwiseWalletEvent(
        lastDerivationPath: '1',
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

    when(commercioAccount.generatePairwiseWallet(
      lastDerivationPathSegment: '1',
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });
}
