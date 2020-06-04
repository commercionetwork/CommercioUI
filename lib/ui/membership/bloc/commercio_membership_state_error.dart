part of 'commercio_membership_bloc.dart';

class CommercioMembershipError extends CommercioMembershipState
    implements CommercioError {
  @override
  final String message;

  const CommercioMembershipError(this.message);

  @override
  List<Object> get props => [message];
}

class CommercioMembershipRequestFaucetInviteError
    extends CommercioMembershipError {
  const CommercioMembershipRequestFaucetInviteError(String message)
      : super(message);
}

class CommercioMembershipBuyMembershipError extends CommercioMembershipError {
  const CommercioMembershipBuyMembershipError(String message) : super(message);
}

class CommercioMembershipInviteMemberError extends CommercioMembershipError {
  const CommercioMembershipInviteMemberError(String message) : super(message);
}
