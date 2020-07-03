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
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

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
    expect(states, [
      'CommercioAccountGenerateWalletInitial',
      'CommercioAccountGenerateWalletLoading',
      'CommercioAccountGenerateWalletData',
    ]);

    when(commercioAccount.generateNewWallet()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioAccountGenerateWalletInitial',
      'CommercioAccountGenerateWalletLoading',
      'CommercioAccountGenerateWalletData',
      'CommercioAccountGenerateWalletLoading',
      'CommercioAccountGenerateWalletError',
    ]);
  });

  testWidgets('Submit GenerateWallet with initial data Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.hasWallet).thenReturn(true);
    when(commercioAccount.hasMnemonic).thenReturn(true);
    when(commercioAccount.hasWalletAddress).thenReturn(true);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.mnemonic).thenReturn(correctMnemonic);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountGenerateWalletBloc(
      commercioAccount: commercioAccount,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

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

    expect(states, [
      'CommercioAccountGenerateWalletData',
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
    expect(states, [
      'CommercioAccountRestoredWalletStateInitial',
      'CommercioAccountRestoredWalletStateLoading',
      'CommercioAccountRestoredWalletStateData',
    ]);

    when(commercioAccount.restoreWallet()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioAccountRestoredWalletStateInitial',
      'CommercioAccountRestoredWalletStateLoading',
      'CommercioAccountRestoredWalletStateData',
      'CommercioAccountRestoredWalletStateLoading',
      'CommercioAccountRestoredWalletStateError',
    ]);
  });

  testWidgets('Submit RestoreWallet with mnemonic', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.generateNewWallet(mnemonic: ''))
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
    expect(states, [
      'CommercioAccountRestoredWalletStateInitial',
      'CommercioAccountRestoredWalletStateLoading',
      'CommercioAccountRestoredWalletStateData',
    ]);
  });

  testWidgets('Submit RestoreWallet with initial data', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.restoreWallet())
        .thenAnswer((_) async => correctWallet);
    when(commercioAccount.hasWallet).thenReturn(true);
    when(commercioAccount.hasMnemonic).thenReturn(true);
    when(commercioAccount.hasWalletAddress).thenReturn(true);
    when(commercioAccount.wallet).thenReturn(correctWallet);
    when(commercioAccount.mnemonic).thenReturn(correctMnemonic);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountRestoreWalletBloc(
      commercioAccount: commercioAccount,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

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
    expect(states, [
      'CommercioAccountRestoredWalletStateData',
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
    expect(states, [
      'CommercioAccountFreeTokensStateInitial',
      'CommercioAccountFreeTokensStateLoading',
      'CommercioAccountFreeTokensStateData',
    ]);

    when(commercioAccount.requestFreeTokens()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
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
    expect(states, [
      'CommercioAccountBalanceStateInitial',
      'CommercioAccountBalanceStateLoading',
      'CommercioAccountBalanceStateData',
    ]);

    when(commercioAccount.checkAccountBalance()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
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

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioAccountSentTokensStateInitial',
      'CommercioAccountSentTokensStateLoading',
      'CommercioAccountSentTokensStateData',
      'CommercioAccountSentTokensStateLoading',
      'CommercioAccountSentTokensStateError',
    ]);
  });

  testWidgets('Submit GenerateQr Event', (
    WidgetTester tester,
  ) async {
    when(commercioAccount.hasWalletAddress).thenReturn(false);
    when(commercioAccount.walletAddress).thenReturn(correctWalletAddress);

    final bloc = CommercioAccountGenerateQrBloc(
      commercioAccount: commercioAccount,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

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
    expect(states, [
      'CommercioAccountQrStateInitial',
      'CommercioAccountQrStateLoading',
      'CommercioAccountQrStateData',
    ]);

    when(commercioAccount.walletAddress).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioAccountQrStateInitial',
      'CommercioAccountQrStateLoading',
      'CommercioAccountQrStateData',
      'CommercioAccountQrStateLoading',
      'CommercioAccountQrStateError',
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
    expect(states, [
      'CommercioAccountPaiwiseWalletStateInitial',
      'CommercioAccountPaiwiseWalletStateLoading',
      'CommercioAccountPaiwiseWalletStateData',
    ]);

    when(commercioAccount.generatePairwiseWallet(
      lastDerivationPathSegment: '1',
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioAccountPaiwiseWalletStateInitial',
      'CommercioAccountPaiwiseWalletStateLoading',
      'CommercioAccountPaiwiseWalletStateData',
      'CommercioAccountPaiwiseWalletStateLoading',
      'CommercioAccountPaiwiseWalletStateError',
    ]);
  });
}
