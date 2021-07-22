import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'commercio_kyc_event.dart';
import 'commercio_kyc_state.dart';

class CommercioKycRequestFaucetInviteBloc extends Bloc<
    CommercioKycRequestFaucetInviteEvent,
    CommercioKycRequestedFaucetInviteState> {
  final StatefulCommercioKyc commercioKyc;

  CommercioKycRequestFaucetInviteBloc({required this.commercioKyc})
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

class CommercioKycDeriveBuyMembershipBloc extends Bloc<
    CommercioKycDeriveBuyMembershipEvent,
    CommercioKycDeriveBuyMembershipState> {
  final StatefulCommercioKyc commercioKyc;

  CommercioKycDeriveBuyMembershipBloc({required this.commercioKyc})
      : super(const CommercioKycDeriveBuyMembershipStateInitial());

  @override
  Stream<CommercioKycDeriveBuyMembershipState> mapEventToState(
    CommercioKycDeriveBuyMembershipEvent event,
  ) async* {
    try {
      yield const CommercioKycDeriveBuyMembershipStateLoading();

      final buyMembership = commercioKyc.deriveBuyMembership(
        membershipType: event.membershipType,
        tsp: event.tsp,
      );

      yield CommercioKycDeriveBuyMembershipStateData(
        buyMembership: buyMembership,
      );
    } catch (e) {
      yield CommercioKycDeriveBuyMembershipStateError(e.toString());
    }
  }
}

class CommercioKycBuyMembershipsBloc extends Bloc<
    CommercioKycBuyMembershipsEvent, CommercioKycBuyMembershipsState> {
  final StatefulCommercioKyc commercioKyc;

  CommercioKycBuyMembershipsBloc({required this.commercioKyc})
      : super(const CommercioKycBuyMembershipsStateInitial());

  @override
  Stream<CommercioKycBuyMembershipsState> mapEventToState(
    CommercioKycBuyMembershipsEvent event,
  ) async* {
    try {
      yield const CommercioKycBuyMembershipsStateLoading();

      final result = await commercioKyc.buyMemberships(
        buyMemberships: event.buyMemberships,
        fee: event.fee,
        mode: event.mode,
      );

      yield CommercioKycBuyMembershipsStateData(result: result);
    } catch (e) {
      yield CommercioKycBuyMembershipsStateError(e.toString());
    }
  }
}

class CommercioKycDeriveInviteMemberBloc extends Bloc<
    CommercioKycDeriveInviteMemberEvent, CommercioKycDeriveInviteMemberState> {
  final StatefulCommercioKyc commercioKyc;

  CommercioKycDeriveInviteMemberBloc({required this.commercioKyc})
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

  CommercioKycInviteMembersBloc({required this.commercioKyc})
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
        mode: event.mode,
      );

      yield CommercioKycInviteMembersStateData(result: result);
    } catch (e) {
      yield CommercioKycInviteMembersStateError(e.toString());
    }
  }
}

class CommercioKycMembershipTypeChooserBloc extends Bloc<
    CommercioKycChangeMembershipTypeEvent, CommercioKycChangeMembershipState> {
  MembershipType membershipType = MembershipType.BRONZE;

  CommercioKycMembershipTypeChooserBloc()
      : super(CommercioKycChangeMembershipStateInitial(
          membershipType: MembershipType.BRONZE,
        ));

  @override
  Stream<CommercioKycChangeMembershipState> mapEventToState(
    CommercioKycChangeMembershipTypeEvent event,
  ) async* {
    if (event is CommercioKycChangeMembershipTypeEvent) {
      membershipType = event.membershipType;

      yield CommercioKycChangedMembershipState(membershipType: membershipType);
    }
  }
}
