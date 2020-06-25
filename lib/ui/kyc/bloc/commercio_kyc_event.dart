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

class CommercioKycInviteMemberEvent extends CommercioKycEvent {
  final String invitedAddress;
  final StdFee fee;

  const CommercioKycInviteMemberEvent(
      {@required this.invitedAddress, this.fee});

  @override
  List<Object> get props => [invitedAddress, fee];
}
