import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/src/entities/faucet_invite_response.dart';
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
  final correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'http://lcd-url',
  );
  const correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  final correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  final correctWalletAddress = correctWallet.bech32Address;
  final correctInviteUser = InviteUser(
    recipientDid: correctWalletAddress,
    senderDid: correctWalletAddress,
  );
  final correctMembershipType = MembershipType.BRONZE;
  final correctBuyMembership = BuyMembership(
    membershipType: correctMembershipType.value,
    buyerDid: correctWalletAddress,
  );

  testWidgets('Submit RequestFaucetInvite Event', (
    WidgetTester tester,
  ) async {
    when(commercioKyc.requestFaucetInvite()).thenAnswer(
      (_) async => FaucetInviteResponse(txHash: ''),
    );

    final bloc = CommercioKycRequestFaucetInviteBloc(
      commercioKyc: commercioKyc,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioKycRequestedFaucetInviteStateInitial>(),
        isA<CommercioKycRequestedFaucetInviteStateLoading>(),
        isA<CommercioKycRequestedFaucetInviteStateData>(),
        isA<CommercioKycRequestedFaucetInviteStateLoading>(),
        isA<CommercioKycRequestedFaucetInviteStateError>(),
      ]),
    );

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

    when(commercioKyc.requestFaucetInvite()).thenThrow(Exception());

    bloc.add(const CommercioKycRequestFaucetInviteEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit DeriveBuyMembership Event', (
    WidgetTester tester,
  ) async {
    when(commercioKyc.deriveBuyMembership(
      membershipType: correctMembershipType,
    )).thenReturn(correctBuyMembership);

    final bloc = CommercioKycDeriveBuyMembershipBloc(
      commercioKyc: commercioKyc,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioKycDeriveBuyMembershipStateInitial>(),
        isA<CommercioKycDeriveBuyMembershipStateLoading>(),
        isA<CommercioKycDeriveBuyMembershipStateData>(),
        isA<CommercioKycDeriveBuyMembershipStateLoading>(),
        isA<CommercioKycDeriveBuyMembershipStateError>(),
      ]),
    );

    final commTextField = DeriveBuyMembershipTextField(
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

    bloc.add(CommercioKycDeriveBuyMembershipEvent(
      membershipType: correctMembershipType,
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioKyc.deriveBuyMembership(
      membershipType: correctMembershipType,
    )).thenThrow(Exception());

    bloc.add(CommercioKycDeriveBuyMembershipEvent(
      membershipType: correctMembershipType,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit BuyMemberships Event', (
    WidgetTester tester,
  ) async {
    when(commercioKyc.buyMemberships(
      buyMemberships: [correctBuyMembership],
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioKycBuyMembershipsBloc(
      commercioKyc: commercioKyc,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioKycBuyMembershipsStateInitial>(),
        isA<CommercioKycBuyMembershipsStateLoading>(),
        isA<CommercioKycBuyMembershipsStateData>(),
        isA<CommercioKycBuyMembershipsStateLoading>(),
        isA<CommercioKycBuyMembershipsStateError>(),
      ]),
    );

    final commTextField = BuyMembershipsTextField(
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

    bloc.add(CommercioKycBuyMembershipsEvent(
      buyMemberships: [correctBuyMembership],
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioKyc.buyMemberships(
      buyMemberships: [correctBuyMembership],
    )).thenThrow(Exception());

    bloc.add(CommercioKycBuyMembershipsEvent(
      buyMemberships: [correctBuyMembership],
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit DeriveInviteMember Event', (
    WidgetTester tester,
  ) async {
    when(commercioKyc.deriveInviteMember(
      invitedAddress: correctWalletAddress,
    )).thenReturn(correctInviteUser);

    final bloc = CommercioKycDeriveInviteMemberBloc(
      commercioKyc: commercioKyc,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioKycDeriveInviteMemberStateInitial>(),
        isA<CommercioKycDeriveInviteMemberStateLoading>(),
        isA<CommercioKycDeriveInviteMemberStateData>(),
        isA<CommercioKycDeriveInviteMemberStateLoading>(),
        isA<CommercioKycDeriveInviteMemberStateError>(),
      ]),
    );

    final commTextField = DeriveInviteMemberTextField(
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

    bloc.add(CommercioKycDeriveInviteMemberEvent(
      invitedAddress: correctWalletAddress,
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioKyc.deriveInviteMember(
      invitedAddress: correctWalletAddress,
    )).thenThrow(Exception());

    bloc.add(CommercioKycDeriveInviteMemberEvent(
      invitedAddress: correctWalletAddress,
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });

  testWidgets('Submit InviteMembers Event', (
    WidgetTester tester,
  ) async {
    when(commercioKyc.inviteMembers(
      inviteUsers: [correctInviteUser],
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioKycInviteMembersBloc(
      commercioKyc: commercioKyc,
    );

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioKycInviteMembersStateInitial>(),
        isA<CommercioKycInviteMembersStateLoading>(),
        isA<CommercioKycInviteMembersStateData>(),
        isA<CommercioKycInviteMembersStateLoading>(),
        isA<CommercioKycInviteMembersStateError>(),
      ]),
    );

    final commTextField = InviteMembersTextField(
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

    bloc.add(CommercioKycInviteMembersEvent(
      inviteUsers: [correctInviteUser],
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioKyc.inviteMembers(
      inviteUsers: [correctInviteUser],
    )).thenThrow(Exception());

    bloc.add(CommercioKycInviteMembersEvent(
      inviteUsers: [correctInviteUser],
    ));
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
  });
}
