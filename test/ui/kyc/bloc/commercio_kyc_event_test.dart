import 'package:commercio_ui/src/ui/kyc/bloc/commercio_kyc_event.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
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

  test('CommercioKycRequestFaucetInviteEvent', () {
    const faucetDomain = 'faucetDomain';

    final event = CommercioKycRequestFaucetInviteEvent(
      faucetDomain: faucetDomain,
    );

    expect(event.props, [faucetDomain]);
  });

  test('CommercioKycDeriveBuyMembershipEvent', () {
    final event = CommercioKycDeriveBuyMembershipEvent(
      membershipType: correctMembershipType,
    );

    expect(event.props, [correctMembershipType]);
  });

  test('CommercioKycBuyMembershipEvent', () {
    const fee = StdFee(amount: [], gas: 'gas');
    const mode = BroadcastingMode.ASYNC;

    final event = CommercioKycBuyMembershipsEvent(
      buyMemberships: [correctBuyMembership],
      fee: fee,
      mode: mode,
    );

    expect(event.props, [
      [correctBuyMembership],
      fee,
      mode,
    ]);
  });

  test('CommercioKycDeriveInviteMemberEvent', () {
    final event = CommercioKycDeriveInviteMemberEvent(
      invitedAddress: correctWalletAddress,
    );

    expect(event.props, [correctWalletAddress]);
  });

  test('CommercioKycInviteMembersEvent', () {
    const fee = StdFee(amount: [], gas: 'gas');
    const mode = BroadcastingMode.ASYNC;

    final event = CommercioKycInviteMembersEvent(
      inviteUsers: [correctInviteUser],
      fee: fee,
      mode: mode,
    );

    expect(event.props, [
      [correctInviteUser],
      fee,
      mode,
    ]);
  });

  test('CommercioKycChangeMembershipTypeEvent', () {
    final event = CommercioKycChangeMembershipTypeEvent(
      membershipType: correctMembershipType,
    );

    expect(event.props, [correctMembershipType]);
  });
}
