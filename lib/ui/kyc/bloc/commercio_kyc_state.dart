import 'package:commercio_ui/entities/faucet_invite_response.dart';
import 'package:commerciosdk/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sacco/sacco.dart';

part 'commercio_kyc_state.freezed.dart';

@freezed
abstract class CommercioKycRequestedFaucetInviteState
    with _$CommercioKycRequestedFaucetInviteState {
  const factory CommercioKycRequestedFaucetInviteState({
    @required FaucetInviteResponse response,
  }) = CommercioKycRequestedFaucetInviteStateData;

  const factory CommercioKycRequestedFaucetInviteState.initial() =
      CommercioKycRequestedFaucetInviteStateInitial;

  const factory CommercioKycRequestedFaucetInviteState.loading() =
      CommercioKycRequestedFaucetInviteStateLoading;

  const factory CommercioKycRequestedFaucetInviteState.error([String error]) =
      CommercioKycRequestedFaucetInviteStateError;
}

@freezed
abstract class CommercioKycDeriveBuyMembershipState
    with _$CommercioKycDeriveBuyMembershipState {
  const factory CommercioKycDeriveBuyMembershipState({
    @required BuyMembership buyMembership,
  }) = CommercioKycDeriveBuyMembershipStateData;

  const factory CommercioKycDeriveBuyMembershipState.initial() =
      CommercioKycDeriveBuyMembershipStateInitial;

  const factory CommercioKycDeriveBuyMembershipState.loading() =
      CommercioKycDeriveBuyMembershipStateLoading;

  const factory CommercioKycDeriveBuyMembershipState.error([String error]) =
      CommercioKycDeriveBuyMembershipStateError;
}

@freezed
abstract class CommercioKycBuyMembershipsState
    with _$CommercioKycBuyMembershipsState {
  const factory CommercioKycBuyMembershipsState({
    @required TransactionResult result,
  }) = CommercioKycBuyMembershipsStateData;

  const factory CommercioKycBuyMembershipsState.initial() =
      CommercioKycBuyMembershipsStateInitial;

  const factory CommercioKycBuyMembershipsState.loading() =
      CommercioKycBuyMembershipsStateLoading;

  const factory CommercioKycBuyMembershipsState.error([String error]) =
      CommercioKycBuyMembershipsStateError;
}

@freezed
abstract class CommercioKycDeriveInviteMemberState
    with _$CommercioKycDeriveInviteMemberState {
  const factory CommercioKycDeriveInviteMemberState({
    @required InviteUser inviteUser,
  }) = CommercioKycDeriveInviteMemberStateData;

  const factory CommercioKycDeriveInviteMemberState.initial() =
      CommercioKycDeriveInviteMemberStateInitial;

  const factory CommercioKycDeriveInviteMemberState.loading() =
      CommercioKycDeriveInviteMemberStateLoading;

  const factory CommercioKycDeriveInviteMemberState.error([String error]) =
      CommercioKycDeriveInviteMemberStateError;
}

@freezed
abstract class CommercioKycInviteMembersState
    with _$CommercioKycInviteMembersState {
  const factory CommercioKycInviteMembersState({
    @required TransactionResult result,
  }) = CommercioKycInviteMembersStateData;

  const factory CommercioKycInviteMembersState.initial() =
      CommercioKycInviteMembersStateInitial;

  const factory CommercioKycInviteMembersState.loading() =
      CommercioKycInviteMembersStateLoading;

  const factory CommercioKycInviteMembersState.error([String error]) =
      CommercioKycInviteMembersStateError;
}

@freezed
abstract class CommercioKycChangeMembershipState
    with _$CommercioKycChangeMembershipState {
  const factory CommercioKycChangeMembershipState({
    @required MembershipType membershipType,
  }) = CommercioKycChangedMembershipState;

  const factory CommercioKycChangeMembershipState.initial({
    @required MembershipType membershipType,
  }) = CommercioKycChangeMembershipStateInitial;
}
