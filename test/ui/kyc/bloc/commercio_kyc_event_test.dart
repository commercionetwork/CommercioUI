import 'package:commercio_ui/ui/kyc/bloc/commercio_kyc_event.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('CommercioKycRequestFaucetInviteEvent', () {
    const faucetDomain = 'faucetDomain';

    final event = CommercioKycRequestFaucetInviteEvent(
      faucetDomain: faucetDomain,
    );

    expect(event.props, [faucetDomain]);
  });

  test('CommercioKycBuyMembershipEvent', () {
    const membershipType = MembershipType.BLACK;
    const fee = StdFee(amount: [], gas: 'gas');

    final event = CommercioKycBuyMembershipEvent(
      membershipType: membershipType,
      fee: fee,
    );

    expect(event.props, [membershipType, fee]);
  });

  test('CommercioKycInviteMemberEvent', () {
    const invitedAddress = 'invitedAddress';
    const fee = StdFee(amount: [], gas: 'gas');

    final event = CommercioKycInviteMemberEvent(
      invitedAddress: invitedAddress,
      fee: fee,
    );

    expect(event.props, [invitedAddress, fee]);
  });
}
