import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class StatefulCommercioMintMock extends Mock implements StatefulCommercioMint {}

void main() {
  const childText = 'Child';
  const loadingText = 'Loading';
  const errorText = 'Error';
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

    final bloc = CommercioMintOpenCdpBloc(
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

    final commTextField = OpenCdpTextField(
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

    bloc.add(const CommercioMintOpenCdpEvent(
      amount: amount,
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioMint.openCdp(amount: amount)).thenThrow(Exception());

    bloc.add(const CommercioMintOpenCdpEvent(
      amount: amount,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit DeriveCloseCdp Event', (WidgetTester tester) async {
    when(commercioMint.deriveCloseCdp(
      blockHeight: correctBlockHeigth,
    )).thenReturn(correctCloseCdp);

    final bloc = CommercioMintDeriveCloseCdpBloc(
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

    final commTextField = DeriveCloseCdpTextField(
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

    bloc.add(CommercioMintDeriveCloseCdpEvent(
      blockHeight: correctBlockHeigth,
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioMint.deriveCloseCdp(
      blockHeight: correctBlockHeigth,
    )).thenThrow(Exception());

    bloc.add(CommercioMintDeriveCloseCdpEvent(
      blockHeight: correctBlockHeigth,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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

    final commTextField = CloseCdpsTextField(
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

    bloc.add(CommercioMintCloseCdpsEvent(
      closeCdps: [correctCloseCdp],
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioMint.closeCdps(
      closeCdps: [correctCloseCdp],
    )).thenThrow(Exception());

    bloc.add(CommercioMintCloseCdpsEvent(
      closeCdps: [correctCloseCdp],
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });
}
