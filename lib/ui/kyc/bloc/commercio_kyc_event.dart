import 'package:commerciosdk/export.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class CommercioKycEvent extends Equatable {
  const CommercioKycEvent();
}

class CommercioKycRequestFaucetInviteEvent extends CommercioKycEvent {
  final String faucetDomain;

  const CommercioKycRequestFaucetInviteEvent({this.faucetDomain});

  @override
  List<Object> get props => [faucetDomain];
}

class CommercioKycBuyMembershipEvent extends CommercioKycEvent {
  final MembershipType membershipType;
  final StdFee fee;

  const CommercioKycBuyMembershipEvent(
      {@required this.membershipType, this.fee});

  @override
  List<Object> get props => [membershipType, fee];
}

class CommercioKycDeriveInviteMemberEvent extends CommercioKycEvent {
  final String invitedAddress;

  const CommercioKycDeriveInviteMemberEvent({
    @required this.invitedAddress,
  });

  @override
  List<Object> get props => [invitedAddress];
}

class CommercioKycInviteMembersEvent extends CommercioKycEvent {
  final List<InviteUser> inviteUsers;
  final StdFee fee;

  const CommercioKycInviteMembersEvent({
    @required this.inviteUsers,
    this.fee,
  });

  @override
  List<Object> get props => [inviteUsers, fee];
}
