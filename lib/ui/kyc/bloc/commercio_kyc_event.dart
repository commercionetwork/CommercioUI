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

class CommercioKycDeriveBuyMembershipEvent extends CommercioKycEvent {
  final MembershipType membershipType;

  const CommercioKycDeriveBuyMembershipEvent({
    @required this.membershipType,
  });

  @override
  List<Object> get props => [membershipType];
}

class CommercioKycBuyMembershipsEvent extends CommercioKycEvent {
  final List<BuyMembership> buyMemberships;
  final StdFee fee;

  const CommercioKycBuyMembershipsEvent({
    @required this.buyMemberships,
    this.fee,
  });

  @override
  List<Object> get props => [buyMemberships, fee];
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

class CommercioKycChangeMembershipTypeEvent extends CommercioKycEvent {
  final MembershipType membershipType;

  const CommercioKycChangeMembershipTypeEvent({
    @required this.membershipType,
  });

  @override
  List<Object> get props => [membershipType];
}
