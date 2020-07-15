import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class CommercioKycRequestFaucetInviteBloc extends Bloc<
    CommercioKycRequestFaucetInviteEvent,
    CommercioKycRequestedFaucetInviteState> {
  final StatefulCommercioKyc commercioKyc;

  CommercioKycRequestFaucetInviteBloc({@required this.commercioKyc})
      : super(const CommercioKycRequestedFaucetInviteStateInitial());

  @override
  Stream<CommercioKycRequestedFaucetInviteState> mapEventToState(
    CommercioKycRequestFaucetInviteEvent event,
  ) async* {
    try {
      yield const CommercioKycRequestedFaucetInviteStateLoading();

      final response = await commercioKyc.requestFaucetInvite();

      yield CommercioKycRequestedFaucetInviteStateData(response: response);
    } catch (e) {
      yield CommercioKycRequestedFaucetInviteStateError(e.toString());
    }
  }
}

class CommercioKycBuyMembershipBloc extends Bloc<CommercioKycBuyMembershipEvent,
    CommercioKycBuyMembershipState> {
  final StatefulCommercioKyc commercioKyc;

  CommercioKycBuyMembershipBloc({@required this.commercioKyc})
      : super(const CommercioKycBuyMembershipStateInitial());

  @override
  Stream<CommercioKycBuyMembershipState> mapEventToState(
    CommercioKycBuyMembershipEvent event,
  ) async* {
    try {
      yield const CommercioKycBuyMembershipStateLoading();

      final result = await commercioKyc.buyMembership(
        membershipType: event.membershipType,
        fee: event.fee,
      );

      yield CommercioKycBuyMembershipStateData(result: result);
    } catch (e) {
      yield CommercioKycBuyMembershipStateError(e.toString());
    }
  }
}

class CommercioKycDeriveInviteMemberBloc extends Bloc<
    CommercioKycDeriveInviteMemberEvent, CommercioKycDeriveInviteMemberState> {
  final StatefulCommercioKyc commercioKyc;

  CommercioKycDeriveInviteMemberBloc({@required this.commercioKyc})
      : super(const CommercioKycDeriveInviteMemberStateInitial());

  @override
  Stream<CommercioKycDeriveInviteMemberState> mapEventToState(
    CommercioKycDeriveInviteMemberEvent event,
  ) async* {
    try {
      yield const CommercioKycDeriveInviteMemberStateLoading();

      final inviteUser = commercioKyc.deriveInviteMember(
        invitedAddress: event.invitedAddress,
      );

      yield CommercioKycDeriveInviteMemberStateData(inviteUser: inviteUser);
    } catch (e) {
      yield CommercioKycDeriveInviteMemberStateError(e.toString());
    }
  }
}

class CommercioKycInviteMembersBloc extends Bloc<CommercioKycInviteMembersEvent,
    CommercioKycInviteMembersState> {
  final StatefulCommercioKyc commercioKyc;

  CommercioKycInviteMembersBloc({@required this.commercioKyc})
      : super(const CommercioKycInviteMembersStateInitial());

  @override
  Stream<CommercioKycInviteMembersState> mapEventToState(
    CommercioKycInviteMembersEvent event,
  ) async* {
    try {
      yield const CommercioKycInviteMembersStateLoading();

      final result = await commercioKyc.inviteMembers(
        inviteUsers: event.inviteUsers,
        fee: event.fee,
      );

      yield CommercioKycInviteMembersStateData(result: result);
    } catch (e) {
      yield CommercioKycInviteMembersStateError(e.toString());
    }
  }
}
