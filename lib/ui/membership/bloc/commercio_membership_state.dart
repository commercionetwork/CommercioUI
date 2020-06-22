import 'package:commercio_ui/commercio_ui.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

abstract class CommercioMembershipState extends CommercioState {
  const CommercioMembershipState();
}

class CommercioMembershipInitial extends CommercioMembershipState {
  const CommercioMembershipInitial();

  @override
  List<Object> get props => [];
}

class CommercioMembershipRequestedFaucetInvite
    extends CommercioMembershipState {
  final StatefulCommercioMembership commercioMembership;
  final String result;

  const CommercioMembershipRequestedFaucetInvite({
    @required this.commercioMembership,
    @required this.result,
  });

  @override
  List<Object> get props => [commercioMembership, result];
}

class CommercioMembershipBuyMembership extends CommercioMembershipState {
  final StatefulCommercioMembership commercioMembership;
  final TransactionResult transactionResult;

  const CommercioMembershipBuyMembership({
    @required this.commercioMembership,
    @required this.transactionResult,
  });

  @override
  List<Object> get props => [commercioMembership, transactionResult];
}

class CommercioMembershipInviteMember extends CommercioMembershipState {
  final StatefulCommercioMembership commercioMembership;
  final TransactionResult transactionResult;

  const CommercioMembershipInviteMember({
    @required this.commercioMembership,
    @required this.transactionResult,
  });

  @override
  List<Object> get props => [commercioMembership, transactionResult];
}
