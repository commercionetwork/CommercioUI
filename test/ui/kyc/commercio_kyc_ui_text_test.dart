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
  final NetworkInfo correctNetworkInfo = NetworkInfo(
    bech32Hrp: 'bech32Hrp',
    lcdUrl: 'http://lcd-url',
  );
  const String correctMnemonic =
      'sentence leg enroll jump price ramp lens decrease gadget clap photo news lunar entry vital cousin easy review catalog fatal law route siege soft';
  Wallet correctWallet = Wallet.derive(
    correctMnemonic.split(' '),
    correctNetworkInfo,
  );
  String correctWalletAddress = correctWallet.bech32Address;
  final correctInviteUser = InviteUser(
    recipientDid: correctWalletAddress,
    senderDid: correctWalletAddress,
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

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioKycRequestedFaucetInviteStateLoading>(),
        isA<CommercioKycRequestedFaucetInviteStateData>(),
        isA<CommercioKycRequestedFaucetInviteStateLoading>(),
        isA<CommercioKycRequestedFaucetInviteStateError>(),
      ]),
    );

    final commText = RequestFaucetInviteText(
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

    bloc.add(const CommercioKycRequestFaucetInviteEvent());
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioKyc.requestFaucetInvite()).thenThrow(Exception());

    bloc.add(const CommercioKycRequestFaucetInviteEvent());
    await tester.pumpAndSettle();

    expect(find.text(errorText), findsOneWidget);
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

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioKycBuyMembershipStateLoading>(),
        isA<CommercioKycBuyMembershipStateData>(),
        isA<CommercioKycBuyMembershipStateLoading>(),
        isA<CommercioKycBuyMembershipStateError>(),
      ]),
    );

    final commText = BuyMembershipText(
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

    bloc.add(const CommercioKycBuyMembershipEvent(
      membershipType: membershipType,
    ));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);

    when(commercioKyc.buyMembership(
      membershipType: membershipType,
    )).thenThrow(Exception());

    bloc.add(const CommercioKycBuyMembershipEvent(
      membershipType: membershipType,
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

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioKycDeriveInviteMemberStateLoading>(),
        isA<CommercioKycDeriveInviteMemberStateData>(),
        isA<CommercioKycDeriveInviteMemberStateLoading>(),
        isA<CommercioKycDeriveInviteMemberStateError>(),
      ]),
    );

    final commTextField = DeriveInviteMemberText(
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

  testWidgets('Submit InviteMember Event', (
    WidgetTester tester,
  ) async {
    when(commercioKyc.inviteMembers(
      inviteUsers: [correctInviteUser],
    )).thenAnswer((_) async => correctTxResult);

    final bloc = CommercioKycInviteMembersBloc(
      commercioKyc: commercioKyc,
    );

    expectLater(
      bloc,
      emitsInOrder([
        isA<CommercioKycInviteMembersStateLoading>(),
        isA<CommercioKycInviteMembersStateData>(),
        isA<CommercioKycInviteMembersStateLoading>(),
        isA<CommercioKycInviteMembersStateError>(),
      ]),
    );

    final commText = InviteMembersText(
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
