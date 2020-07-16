import 'package:commercio_ui/ui/kyc/bloc/commercio_kyc_event.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
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

    final event = CommercioKycBuyMembershipsEvent(
      buyMemberships: [correctBuyMembership],
      fee: fee,
    );

    expect(event.props, [
      [correctBuyMembership],
      fee
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

    final event = CommercioKycInviteMembersEvent(
      inviteUsers: [correctInviteUser],
      fee: fee,
    );

    expect(event.props, [
      [correctInviteUser],
      fee
    ]);
  });

  test('CommercioKycChangeMembershipTypeEvent', () {
    final event = CommercioKycChangeMembershipTypeEvent(
      membershipType: correctMembershipType,
    );

    expect(event.props, [correctMembershipType]);
  });
}
