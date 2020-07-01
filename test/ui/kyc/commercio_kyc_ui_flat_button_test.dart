import 'package:commercio_ui/commercio_ui.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/sacco.dart';

class StatefulCommercioKycMock extends Mock implements StatefulCommercioKyc {}

void main() {
  const childText = 'Child';
  const loadingText = 'Loading';
  final correctTxResult = TransactionResult(hash: '', success: true);
  final commercioKyc = StatefulCommercioKycMock();

  testWidgets('Submit RequestFaucetInvite Event', (
    WidgetTester tester,
  ) async {
    when(commercioKyc.requestFaucetInvite()).thenAnswer((_) async => '');

    final bloc = CommercioKycRequestFaucetInviteBloc(
      commercioKyc: commercioKyc,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commFlatButton = RequestFaucetInviteFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioKycRequestFaucetInviteEvent(),
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
      'CommercioKycRequestedFaucetInviteStateInitial',
      'CommercioKycRequestedFaucetInviteStateLoading',
      'CommercioKycRequestedFaucetInviteStateData',
    ]);

    when(commercioKyc.requestFaucetInvite()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioKycRequestedFaucetInviteStateInitial',
      'CommercioKycRequestedFaucetInviteStateLoading',
      'CommercioKycRequestedFaucetInviteStateData',
      'CommercioKycRequestedFaucetInviteStateLoading',
      'CommercioKycRequestedFaucetInviteStateError',
    ]);
  });

  testWidgets('Submit BuyMembership Event', (
    WidgetTester tester,
  ) async {
    const membershipType = MembershipType.BLACK;

    when(commercioKyc.buyMembership(
      membershipType: membershipType,
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioKycBuyMembershipBloc(
      commercioKyc: commercioKyc,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commFlatButton = BuyMembershipFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioKycBuyMembershipEvent(
        membershipType: membershipType,
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
      'CommercioKycBuyMembershipStateInitial',
      'CommercioKycBuyMembershipStateLoading',
      'CommercioKycBuyMembershipStateData',
    ]);

    when(commercioKyc.buyMembership(
      membershipType: membershipType,
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioKycBuyMembershipStateInitial',
      'CommercioKycBuyMembershipStateLoading',
      'CommercioKycBuyMembershipStateData',
      'CommercioKycBuyMembershipStateLoading',
      'CommercioKycBuyMembershipStateError',
    ]);
  });

  testWidgets('Submit InviteMember Event', (
    WidgetTester tester,
  ) async {
    const invitedAddress = '';

    when(commercioKyc.inviteMember(
      invitedAddress: invitedAddress,
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioKycInviteMemberBloc(
      commercioKyc: commercioKyc,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commFlatButton = InviteMemberFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioKycInviteMemberEvent(
        invitedAddress: invitedAddress,
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
      'CommercioKycInviteMemberStateInitial',
      'CommercioKycInviteMemberStateLoading',
      'CommercioKycInviteMemberStateData',
    ]);

    when(commercioKyc.inviteMember(
      invitedAddress: invitedAddress,
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioKycInviteMemberStateInitial',
      'CommercioKycInviteMemberStateLoading',
      'CommercioKycInviteMemberStateData',
      'CommercioKycInviteMemberStateLoading',
      'CommercioKycInviteMemberStateError',
    ]);
  });
}
