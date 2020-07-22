import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/src/entities/faucet_invite_response.dart';
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
        isA<CommercioKycRequestedFaucetInviteStateLoading>(),
        isA<CommercioKycRequestedFaucetInviteStateData>(),
        isA<CommercioKycRequestedFaucetInviteStateLoading>(),
        isA<CommercioKycRequestedFaucetInviteStateError>(),
      ]),
    );

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

    when(commercioKyc.requestFaucetInvite()).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
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
        isA<CommercioKycDeriveBuyMembershipStateLoading>(),
        isA<CommercioKycDeriveBuyMembershipStateData>(),
        isA<CommercioKycDeriveBuyMembershipStateLoading>(),
        isA<CommercioKycDeriveBuyMembershipStateError>(),
      ]),
    );

    final commFlatButton = DeriveBuyMembershipFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioKycDeriveBuyMembershipEvent(
        membershipType: correctMembershipType,
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

    when(commercioKyc.deriveBuyMembership(
      membershipType: correctMembershipType,
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
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
        isA<CommercioKycBuyMembershipsStateLoading>(),
        isA<CommercioKycBuyMembershipsStateData>(),
        isA<CommercioKycBuyMembershipsStateLoading>(),
        isA<CommercioKycBuyMembershipsStateError>(),
      ]),
    );

    final commFlatButton = BuyMembershipsFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioKycBuyMembershipsEvent(
        buyMemberships: [correctBuyMembership],
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

    when(commercioKyc.buyMemberships(
      buyMemberships: [correctBuyMembership],
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
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
        isA<CommercioKycDeriveInviteMemberStateLoading>(),
        isA<CommercioKycDeriveInviteMemberStateData>(),
        isA<CommercioKycDeriveInviteMemberStateLoading>(),
        isA<CommercioKycDeriveInviteMemberStateError>(),
      ]),
    );

    final commFlatButton = DeriveInviteMemberFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioKycDeriveInviteMemberEvent(
        invitedAddress: correctWalletAddress,
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

    when(commercioKyc.deriveInviteMember(
      invitedAddress: correctWalletAddress,
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
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

    expect(
      bloc,
      emitsInOrder([
        isA<CommercioKycInviteMembersStateLoading>(),
        isA<CommercioKycInviteMembersStateData>(),
        isA<CommercioKycInviteMembersStateLoading>(),
        isA<CommercioKycInviteMembersStateError>(),
      ]),
    );

    final commFlatButton = InviteMembersFlatButton(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => CommercioKycInviteMembersEvent(
        inviteUsers: [correctInviteUser],
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

    when(commercioKyc.inviteMembers(
      inviteUsers: [correctInviteUser],
    )).thenThrow(Exception());

    await tester.tap(find.byWidget(commFlatButton));
    await tester.pumpAndSettle();

    expect(find.text(childText), findsOneWidget);
  });
}
