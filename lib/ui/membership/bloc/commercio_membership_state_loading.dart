import 'package:commercio_ui/commercio_ui.dart';

class CommercioMembershipLoading extends CommercioMembershipState
    implements CommercioLoading {
  const CommercioMembershipLoading();

  @override
  List<Object> get props => [];
}

class CommercioMembershipRequestFaucetInviteLoading
    extends CommercioMembershipLoading {
  const CommercioMembershipRequestFaucetInviteLoading();
}

class CommercioMembershipBuyMembershipLoading
    extends CommercioMembershipLoading {
  const CommercioMembershipBuyMembershipLoading();
}

class CommercioMembershipInviteMemberLoading
    extends CommercioMembershipLoading {
  const CommercioMembershipInviteMemberLoading();
}
