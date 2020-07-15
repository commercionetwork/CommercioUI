import 'package:commercio_ui/entities/faucet_invite_response.dart';
import 'package:commerciosdk/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
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
abstract class CommercioKycBuyMembershipState
    with _$CommercioKycBuyMembershipState {
  const factory CommercioKycBuyMembershipState({
    @required TransactionResult result,
  }) = CommercioKycBuyMembershipStateData;

  const factory CommercioKycBuyMembershipState.initial() =
      CommercioKycBuyMembershipStateInitial;

  const factory CommercioKycBuyMembershipState.loading() =
      CommercioKycBuyMembershipStateLoading;

  const factory CommercioKycBuyMembershipState.error([String error]) =
      CommercioKycBuyMembershipStateError;
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
