import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/sacco.dart';

class StatefulCommercioMintMock extends Mock implements StatefulCommercioMint {}

void main() {
  const childText = 'Child';
  const loadingText = 'Loading';
  const errorText = 'Error';
  final correctTxResult = TransactionResult(hash: '', success: true);
  final commercioMint = StatefulCommercioMintMock();

  testWidgets('Submit OpenCdp Event', (WidgetTester tester) async {
    const amount = 1;

    when(commercioMint.openCdp(amount: amount))
        .thenAnswer((_) async => correctTxResult);

    final bloc = CommercioMintOpenCdpBloc(
      commercioMint: commercioMint,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commText = OpenCdpText(
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

    bloc.add(const CommercioMintOpenCdpEvent(
      amount: amount,
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioMintOpenedCdpStateInitial',
      'CommercioMintOpenedCdpStateLoading',
      'CommercioMintOpenedCdpStateData',
    ]);

    when(commercioMint.openCdp(amount: amount)).thenThrow(Exception());

    bloc.add(const CommercioMintOpenCdpEvent(
      amount: amount,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioMintOpenedCdpStateInitial',
      'CommercioMintOpenedCdpStateLoading',
      'CommercioMintOpenedCdpStateData',
      'CommercioMintOpenedCdpStateLoading',
      'CommercioMintOpenedCdpStateError',
    ]);
  });

  testWidgets('Submit CloseCdp Event', (WidgetTester tester) async {
    const blockHeight = 1;

    when(commercioMint.closeCdp(blockHeight: blockHeight))
        .thenAnswer((_) async => correctTxResult);

    final bloc = CommercioMintCloseCdpBloc(
      commercioMint: commercioMint,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commText = CloseCdpText(
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

    bloc.add(const CommercioMintCloseCdpEvent(
      blockHeight: blockHeight,
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioMintClosedCdpStateInitial',
      'CommercioMintClosedCdpStateLoading',
      'CommercioMintClosedCdpStateData',
    ]);

    when(commercioMint.closeCdp(blockHeight: blockHeight))
        .thenThrow(Exception());

    bloc.add(const CommercioMintCloseCdpEvent(
      blockHeight: blockHeight,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioMintClosedCdpStateInitial',
      'CommercioMintClosedCdpStateLoading',
      'CommercioMintClosedCdpStateData',
      'CommercioMintClosedCdpStateLoading',
      'CommercioMintClosedCdpStateError',
    ]);
  });
}
