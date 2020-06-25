import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class CommercioKycRequestFaucetInviteBloc extends Bloc<
    CommercioKycRequestFaucetInviteEvent,
    CommercioKycRequestedFaucetInviteState> {
  final StatefulCommercioKyc commercioKyc;

  CommercioKycRequestFaucetInviteBloc({@required this.commercioKyc});

  @override
  CommercioKycRequestedFaucetInviteState get initialState =>
      const CommercioKycRequestedFaucetInviteStateInitial();

  @override
  Stream<CommercioKycRequestedFaucetInviteState> mapEventToState(
    CommercioKycRequestFaucetInviteEvent event,
  ) async* {
    try {
      yield const CommercioKycRequestedFaucetInviteStateLoading();

      final result = await commercioKyc.requestFaucetInvite();

      yield CommercioKycRequestedFaucetInviteStateData(result: result);
    } catch (e) {
      yield CommercioKycRequestedFaucetInviteStateError(e.toString());
    }
  }
}

class CommercioKycBuyMembershipBloc extends Bloc<CommercioKycBuyMembershipEvent,
    CommercioKycBuyMembershipState> {
  final StatefulCommercioKyc commercioKyc;

  CommercioKycBuyMembershipBloc({@required this.commercioKyc});

  @override
  CommercioKycBuyMembershipState get initialState =>
      const CommercioKycBuyMembershipStateInitial();

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

class CommercioKycInviteMemberBloc
    extends Bloc<CommercioKycInviteMemberEvent, CommercioKycInviteMemberState> {
  final StatefulCommercioKyc commercioKyc;

  CommercioKycInviteMemberBloc({@required this.commercioKyc});

  @override
  CommercioKycInviteMemberState get initialState =>
      const CommercioKycInviteMemberStateInitial();

  @override
  Stream<CommercioKycInviteMemberState> mapEventToState(
    CommercioKycInviteMemberEvent event,
  ) async* {
    try {
      yield const CommercioKycInviteMemberStateLoading();

      final result = await commercioKyc.inviteMember(
        invitedAddress: event.invitedAddress,
        fee: event.fee,
      );

      yield CommercioKycInviteMemberStateData(result: result);
    } catch (e) {
      yield CommercioKycInviteMemberStateError(e.toString());
    }
  }
}
