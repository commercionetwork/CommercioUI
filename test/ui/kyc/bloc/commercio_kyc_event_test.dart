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
}
