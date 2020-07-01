import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/sacco.dart';

class StatefulCommercioMintMock extends Mock implements StatefulCommercioMint {}

void main() {
  const childText = 'Child';
  const loadingText = 'Loading';
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

    final commFlatButton = OpenCdpFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioMintOpenCdpEvent(
        amount: amount,
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
      'CommercioMintOpenedCdpStateInitial',
      'CommercioMintOpenedCdpStateLoading',
      'CommercioMintOpenedCdpStateData',
    ]);

    when(commercioMint.openCdp(amount: amount)).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
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

    final commFlatButton = CloseCdpFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioMintCloseCdpEvent(
        blockHeight: blockHeight,
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
      'CommercioMintClosedCdpStateInitial',
      'CommercioMintClosedCdpStateLoading',
      'CommercioMintClosedCdpStateData',
    ]);

    when(commercioMint.closeCdp(blockHeight: blockHeight))
        .thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioMintClosedCdpStateInitial',
      'CommercioMintClosedCdpStateLoading',
      'CommercioMintClosedCdpStateData',
      'CommercioMintClosedCdpStateLoading',
      'CommercioMintClosedCdpStateError',
    ]);
  });
}