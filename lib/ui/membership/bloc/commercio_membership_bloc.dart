import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/ui/bloc/commercio_state.dart';
import 'package:commerciosdk/export.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

part 'commercio_membership_event.dart';
part 'commercio_membership_state.dart';
part 'commercio_membership_state_error.dart';
part 'commercio_membership_state_loading.dart';

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

        final result = await commercioMembership.requestFaucetInvite(
          faucetDomain: event.faucetDomain,
        );

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
