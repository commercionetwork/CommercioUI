import 'package:commerciosdk/export.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class CommercioMembershipEvent extends Equatable {
  const CommercioMembershipEvent();
}

class CommercioMembershipRequestFaucetInviteEvent
    extends CommercioMembershipEvent {
  final String faucetDomain;

  const CommercioMembershipRequestFaucetInviteEvent({this.faucetDomain});

  @override
  List<Object> get props => [faucetDomain];
}

class CommercioMembershipBuyMembershipEvent extends CommercioMembershipEvent {
  final MembershipType membershipType;
  final StdFee fee;

  const CommercioMembershipBuyMembershipEvent(
      {@required this.membershipType, this.fee});

  @override
  List<Object> get props => [membershipType, fee];
}

class CommercioMembershipInviteMemberEvent extends CommercioMembershipEvent {
  final String invitedAddress;
  final StdFee fee;

  const CommercioMembershipInviteMemberEvent(
      {@required this.invitedAddress, this.fee});

  @override
  List<Object> get props => [invitedAddress, fee];
}
