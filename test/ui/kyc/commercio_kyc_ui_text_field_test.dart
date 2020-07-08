import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/entities/faucet_invite_response.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sacco/sacco.dart';

class StatefulCommercioKycMock extends Mock implements StatefulCommercioKyc {}

void main() {
  const childText = 'Child';
  const loadingText = 'Loading';
  const errorText = 'Error';
  final correctTxResult = TransactionResult(hash: '', success: true);
  final commercioKyc = StatefulCommercioKycMock();

  testWidgets('Submit RequestFaucetInvite Event', (
    WidgetTester tester,
  ) async {
    when(commercioKyc.requestFaucetInvite()).thenAnswer(
      (_) async => FaucetInviteResponse(txHash: ''),
    );

    final bloc = CommercioKycRequestFaucetInviteBloc(
      commercioKyc: commercioKyc,
    );
    final List<String> states = [];
    bloc.listen((state) =>
        states.add(state.runtimeType.toString().replaceAll('_\$', '')));

    final commTextField = RequestFaucetInviteTextField(
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

    bloc.add(const CommercioKycRequestFaucetInviteEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
    expect(states, [
      'CommercioKycRequestedFaucetInviteStateInitial',
      'CommercioKycRequestedFaucetInviteStateLoading',
      'CommercioKycRequestedFaucetInviteStateData',
    ]);

    when(commercioKyc.requestFaucetInvite()).thenThrow(Exception());

    bloc.add(const CommercioKycRequestFaucetInviteEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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

    final commTextField = BuyMembershipTextField(
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

    bloc.add(const CommercioKycBuyMembershipEvent(
      membershipType: membershipType,
    ));
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

    bloc.add(const CommercioKycBuyMembershipEvent(
      membershipType: membershipType,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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

    final commTextField = InviteMemberTextField(
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

    bloc.add(const CommercioKycInviteMemberEvent(
      invitedAddress: invitedAddress,
    ));
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

    bloc.add(const CommercioKycInviteMemberEvent(
      invitedAddress: invitedAddress,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
    expect(states, [
      'CommercioKycInviteMemberStateInitial',
      'CommercioKycInviteMemberStateLoading',
      'CommercioKycInviteMemberStateData',
      'CommercioKycInviteMemberStateLoading',
      'CommercioKycInviteMemberStateError',
    ]);
  });
}
