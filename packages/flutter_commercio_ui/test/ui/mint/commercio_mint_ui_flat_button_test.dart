import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class StatefulCommercioMintMock extends Mock implements StatefulCommercioMint {}

void main() {
  const childText = 'Child';
  const loadingText = 'Loading';
  final correctTxResult = TransactionResult(hash: '', success: true);
  final commercioMint = StatefulCommercioMintMock();
  const correctSignerDid = 'signerDid';
  const correctTimestamp = '1234';
  const correctBlockHeigth = 1234;
  final correctCloseCdp = CloseCdp(
    signerDid: correctSignerDid,
    timeStamp: correctTimestamp,
  );

  testWidgets('Submit OpenCdp Event', (WidgetTester tester) async {
    const amount = 1;

    when(commercioMint.openCdp(amount: amount))
        .thenAnswer((_) async => correctTxResult);

    final bloc = CommercioMintCCCBloc(
      commercioMint: commercioMint,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioMintOpenedCdpStateLoading>(),
        isA<CommercioMintOpenedCdpStateData>(),
        isA<CommercioMintOpenedCdpStateLoading>(),
        isA<CommercioMintOpenedCdpStateError>(),
      ]),
    );

    final commFlatButton = MintCccFlatButton(
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

    when(commercioMint.openCdp(amount: amount)).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit DeriveCloseCdp Event', (WidgetTester tester) async {
    when(commercioMint.deriveCloseCdp(
      blockHeight: correctBlockHeigth,
    )).thenReturn(correctCloseCdp);

    final bloc = CommercioMintDeriveBurnCccBloc(
      commercioMint: commercioMint,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioMintDeriveCloseCdpStateLoading>(),
        isA<CommercioMintDeriveCloseCdpStateData>(),
        isA<CommercioMintDeriveCloseCdpStateLoading>(),
        isA<CommercioMintDeriveCloseCdpStateError>(),
      ]),
    );

    final commFlatButton = DeriveBurnCccFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioMintDeriveBurnCCCEvent(
        blockHeight: correctBlockHeigth,
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

    when(commercioMint.deriveCloseCdp(
      blockHeight: correctBlockHeigth,
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });

  testWidgets('Submit CloseCdps Event', (WidgetTester tester) async {
    when(commercioMint.closeCdps(
      closeCdps: [correctCloseCdp],
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioMintCloseCdpsBloc(
      commercioMint: commercioMint,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioMintClosedCdpsStateLoading>(),
        isA<CommercioMintClosedCdpsStateData>(),
        isA<CommercioMintClosedCdpsStateLoading>(),
        isA<CommercioMintClosedCdpsStateError>(),
      ]),
    );

    final commFlatButton = CloseCdpsFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioMintBurnCCCEvent(
        closeCdps: [correctCloseCdp],
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

    when(commercioMint.closeCdps(
      closeCdps: [correctCloseCdp],
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });
}
