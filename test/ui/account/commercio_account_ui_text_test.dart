import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/sacco.dart';

class StatefulCommercioAccountMock extends Mock
    implements StatefulCommercioAccount {}

void main() {
  const childText = 'Child';
  const loadingText = 'Loading';
  const errorText = 'Error';
  final NetworkInfo correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'lcdUrl',
  );
  const String correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  Wallet correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  String correctWalletAddress = correctWallet.bech32Address;
  final commercioAccount = StatefulCommercioAccountMock();

  testWidgets('Submit GenerateWallet Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.generateNewWallet())
        .thenAnswer((_) async => correctWallet);
    when(commercioAccount.hasWallet).thenReturn(false);
    when(commercioAccount.hasMnemonic).thenReturn(false);
    when(commercioAccount.hasWalletAddress).thenReturn(false);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.mnemonic).thenReturn(correctMnemonic);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountGenerateWalletBloc(
      commercioAccount: commercioAccount,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioAccountGenerateWalletLoading>(),
        isA<CommercioAccountGenerateWalletData>(),
        isA<CommercioAccountGenerateWalletLoading>(),
        isA<CommercioAccountGenerateWalletError>(),
      ]),
    );

    final commText = GenerateWalletText(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => state.walletAddress,
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

    bloc.add(const CommercioAccountGenerateWalletEvent());
    await tester.pumpAndSettle();

    expect(find.text(correctWalletAddress), findsOneWidget);

    when(commercioAccount.generateNewWallet()).thenThrow(Exception());
    bloc.add(const CommercioAccountGenerateWalletEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit RestoreWallet Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.restoreWallet())
        .thenAnswer((_) async => correctWallet);
    when(commercioAccount.hasWallet).thenReturn(false);
    when(commercioAccount.hasMnemonic).thenReturn(false);
    when(commercioAccount.hasWalletAddress).thenReturn(false);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.mnemonic).thenReturn(correctMnemonic);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountRestoreWalletBloc(
      commercioAccount: commercioAccount,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioAccountRestoredWalletStateLoading>(),
        isA<CommercioAccountRestoredWalletStateData>(),
        isA<CommercioAccountRestoredWalletStateLoading>(),
        isA<CommercioAccountRestoredWalletStateError>(),
      ]),
    );

    final commText = RestoreWalletText(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => state.walletAddress,
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

    bloc.add(const CommercioAccountRestoreWalletEvent());
    await tester.pumpAndSettle();

    expect(find.text(correctWalletAddress), findsOneWidget);

    when(commercioAccount.restoreWallet()).thenThrow(Exception());
    bloc.add(const CommercioAccountRestoreWalletEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit RequestFreeTokens Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.requestFreeTokens())
        .thenAnswer((_) async => AccountRequestSuccess(''));
    when(commercioAccount.hasWallet).thenReturn(false);
    when(commercioAccount.hasMnemonic).thenReturn(false);
    when(commercioAccount.hasWalletAddress).thenReturn(false);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.mnemonic).thenReturn(correctMnemonic);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountRequestFreeTokensBloc(
      commercioAccount: commercioAccount,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioAccountFreeTokensStateLoading>(),
        isA<CommercioAccountFreeTokensStateData>(),
        isA<CommercioAccountFreeTokensStateLoading>(),
        isA<CommercioAccountFreeTokensStateError>(),
      ]),
    );

    final commText = RequestFreeTokensText(
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

    bloc.add(const CommercioAccountRequestFreeTokensEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioAccount.requestFreeTokens()).thenThrow(Exception());

    bloc.add(const CommercioAccountRequestFreeTokensEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit CheckBalance Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.checkAccountBalance()).thenAnswer((_) async => []);
    when(commercioAccount.hasWallet).thenReturn(false);
    when(commercioAccount.hasMnemonic).thenReturn(false);
    when(commercioAccount.hasWalletAddress).thenReturn(false);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.mnemonic).thenReturn(correctMnemonic);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountCheckBalanceBloc(
      commercioAccount: commercioAccount,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioAccountBalanceStateLoading>(),
        isA<CommercioAccountBalanceStateData>(),
        isA<CommercioAccountBalanceStateLoading>(),
        isA<CommercioAccountBalanceStateError>(),
      ]),
    );

    final commText = CheckBalanceText(
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

    bloc.add(const CommercioAccountCheckBalanceEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioAccount.checkAccountBalance()).thenThrow(Exception());
    bloc.add(const CommercioAccountCheckBalanceEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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
    when(commercioAccount.hasMnemonic).thenReturn(false);
    when(commercioAccount.hasWalletAddress).thenReturn(false);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.mnemonic).thenReturn(correctMnemonic);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountSendTokensBloc(
      commercioAccount: commercioAccount,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioAccountSentTokensStateLoading>(),
        isA<CommercioAccountSentTokensStateData>(),
        isA<CommercioAccountSentTokensStateLoading>(),
        isA<CommercioAccountSentTokensStateError>(),
      ]),
    );

    final commText = SendTokensText(
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

    bloc.add(const CommercioAccountSendTokensEvent(
      amount: [],
      recipientAddress: '',
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioAccount.sendTokens(
      recipientAddress: '',
      amount: [],
    )).thenThrow(Exception());

    bloc.add(const CommercioAccountSendTokensEvent(
      amount: [],
      recipientAddress: '',
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioAccountPaiwiseWalletStateLoading>(),
        isA<CommercioAccountPaiwiseWalletStateData>(),
        isA<CommercioAccountPaiwiseWalletStateLoading>(),
        isA<CommercioAccountPaiwiseWalletStateError>(),
      ]),
    );

    final commText = GeneratePairwiseWalletText(
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

    bloc.add(const CommercioAccountGeneratePairwiseWalletEvent(
      lastDerivationPath: '1',
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioAccount.generatePairwiseWallet(
      lastDerivationPathSegment: '1',
    )).thenThrow(Exception());

    bloc.add(const CommercioAccountGeneratePairwiseWalletEvent(
      lastDerivationPath: '',
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });
}
