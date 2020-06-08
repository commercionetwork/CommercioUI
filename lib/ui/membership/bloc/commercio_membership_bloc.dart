import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class CommercioMembershipBloc
    extends Bloc<CommercioMembershipEvent, CommercioMembershipState> {
  final StatefulCommercioMembership commercioMembership;

  CommercioMembershipBloc({
    @required StatefulCommercioAccount commercioAccount,
  }) : commercioMembership =
            StatefulCommercioMembership(commercioAccount: commercioAccount);

  @override
  CommercioMembershipState get initialState =>
      const CommercioMembershipInitial();

  @override
  Stream<CommercioMembershipState> mapEventToState(
    CommercioMembershipEvent event,
  ) async* {
    if (event is CommercioMembershipRequestFaucetInviteEvent) {
      try {
        yield const CommercioMembershipRequestFaucetInviteLoading();

        final result = await commercioMembership.requestFaucetInvite();

        yield CommercioMembershipRequestedFaucetInvite(
          commercioMembership: commercioMembership,
          result: result,
        );
      } catch (e) {
        yield CommercioMembershipRequestFaucetInviteError(e.toString());
      }
    }

    if (event is CommercioMembershipBuyMembershipEvent) {
      try {
        yield const CommercioMembershipBuyMembershipLoading();

        final txResult = await commercioMembership.buyMembership(
            membershipType: event.membershipType, fee: event.fee);

        yield CommercioMembershipBuyMembership(
          commercioMembership: commercioMembership,
          transactionResult: txResult,
        );
      } catch (e) {
        yield CommercioMembershipBuyMembershipError(e.toString());
      }
    }

    if (event is CommercioMembershipInviteMemberEvent) {
      try {
        yield const CommercioMembershipInviteMemberLoading();

        final txResult = await commercioMembership.inviteMember(
            invitedAddress: event.invitedAddress, fee: event.fee);

        yield CommercioMembershipInviteMember(
          commercioMembership: commercioMembership,
          transactionResult: txResult,
        );
      } catch (e) {
        yield CommercioMembershipInviteMemberError(e.toString());
      }
    }
  }
}
