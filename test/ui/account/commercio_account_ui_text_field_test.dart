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
    final List<String> states = [];
    bloc.listen(
      (state) => states.add(state.runtimeType.toString().replaceAll('_\$', '')),
    );

    final commTextField = GenerateWalletTextField(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => state.walletAddress,
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

    bloc.add(const CommercioAccountGenerateWalletEvent());
    await tester.pumpAndSettle();

    expect(find.text(correctWalletAddress), findsOneWidget);
    expect(states, [
      'CommercioAccountGenerateWalletInitial',
      'CommercioAccountGenerateWalletLoading',
      'CommercioAccountGenerateWalletData',
    ]);

    when(commercioAccount.generateNewWallet()).thenThrow(Exception());
    bloc.add(const CommercioAccountGenerateWalletEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioAccountGenerateWalletInitial',
      'CommercioAccountGenerateWalletLoading',
      'CommercioAccountGenerateWalletData',
      'CommercioAccountGenerateWalletLoading',
      'CommercioAccountGenerateWalletError',
    ]);
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
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = RestoreWalletTextField(
      loading: (_) => loadingText,
      error: (_, __) => errorText,
      text: (_, state) => state.walletAddress,
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

    bloc.add(const CommercioAccountRestoreWalletEvent());
    await tester.pumpAndSettle();

    expect(find.text(correctWalletAddress), findsOneWidget);
    expect(states, [
      'CommercioAccountRestoredWalletStateInitial',
      'CommercioAccountRestoredWalletStateLoading',
      'CommercioAccountRestoredWalletStateData',
    ]);

    when(commercioAccount.restoreWallet()).thenThrow(Exception());
    bloc.add(const CommercioAccountRestoreWalletEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioAccountRestoredWalletStateInitial',
      'CommercioAccountRestoredWalletStateLoading',
      'CommercioAccountRestoredWalletStateData',
      'CommercioAccountRestoredWalletStateLoading',
      'CommercioAccountRestoredWalletStateError',
    ]);
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
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = RequestFreeTokensTextField(
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

    bloc.add(const CommercioAccountRequestFreeTokensEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioAccountFreeTokensStateInitial',
      'CommercioAccountFreeTokensStateLoading',
      'CommercioAccountFreeTokensStateData',
    ]);

    when(commercioAccount.requestFreeTokens()).thenThrow(Exception());

    bloc.add(const CommercioAccountRequestFreeTokensEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioAccountFreeTokensStateInitial',
      'CommercioAccountFreeTokensStateLoading',
      'CommercioAccountFreeTokensStateData',
      'CommercioAccountFreeTokensStateLoading',
      'CommercioAccountFreeTokensStateError',
    ]);
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
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = CheckBalanceTextField(
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

    bloc.add(const CommercioAccountCheckBalanceEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioAccountBalanceStateInitial',
      'CommercioAccountBalanceStateLoading',
      'CommercioAccountBalanceStateData',
    ]);

    when(commercioAccount.checkAccountBalance()).thenThrow(Exception());
    bloc.add(const CommercioAccountCheckBalanceEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioAccountBalanceStateInitial',
      'CommercioAccountBalanceStateLoading',
      'CommercioAccountBalanceStateData',
      'CommercioAccountBalanceStateLoading',
      'CommercioAccountBalanceStateError',
    ]);
  });

  testWidgets('Submit SendTokens Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.sendTokens(
      recipientAddress: '',
      amount: [],
      feeAmount: null,
      gas: null,
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
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = SendTokensTextField(
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

    bloc.add(const CommercioAccountSendTokensEvent(
      amount: [],
      recipientAddress: '',
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioAccountSentTokensStateInitial',
      'CommercioAccountSentTokensStateLoading',
      'CommercioAccountSentTokensStateData',
    ]);

    when(commercioAccount.sendTokens(
      recipientAddress: '',
      amount: [],
      feeAmount: null,
      gas: null,
    )).thenThrow(Exception());

    bloc.add(const CommercioAccountSendTokensEvent(
      amount: [],
      recipientAddress: '',
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioAccountSentTokensStateInitial',
      'CommercioAccountSentTokensStateLoading',
      'CommercioAccountSentTokensStateData',
      'CommercioAccountSentTokensStateLoading',
      'CommercioAccountSentTokensStateError',
    ]);
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
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = GeneratePairwiseWalletTextField(
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

    bloc.add(const CommercioAccountGeneratePairwiseWalletEvent(
      lastDerivationPath: '1',
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioAccountPaiwiseWalletStateInitial',
      'CommercioAccountPaiwiseWalletStateLoading',
      'CommercioAccountPaiwiseWalletStateData',
    ]);

    when(commercioAccount.generatePairwiseWallet(
      lastDerivationPathSegment: '1',
    )).thenThrow(Exception());

    bloc.add(const CommercioAccountGeneratePairwiseWalletEvent(
      lastDerivationPath: '',
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioAccountPaiwiseWalletStateInitial',
      'CommercioAccountPaiwiseWalletStateLoading',
      'CommercioAccountPaiwiseWalletStateData',
      'CommercioAccountPaiwiseWalletStateLoading',
      'CommercioAccountPaiwiseWalletStateError',
    ]);
  });
}
