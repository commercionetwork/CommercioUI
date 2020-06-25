import 'package:commercio_ui/commercio_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

part 'commercio_kyc_state.freezed.dart';

abstract class CommercioKycState extends CommercioState {
  const CommercioKycState();
}

@freezed
@Implements(CommercioKycState)
abstract class CommercioKycRequestedFaucetInviteState
    with _$CommercioKycRequestedFaucetInviteState {
  const factory CommercioKycRequestedFaucetInviteState({
    @required String result,
  }) = CommercioKycRequestedFaucetInviteStateData;

  const factory CommercioKycRequestedFaucetInviteState.initial() =
      CommercioKycRequestedFaucetInviteStateInitial;

  const factory CommercioKycRequestedFaucetInviteState.loading() =
      CommercioKycRequestedFaucetInviteStateLoading;

  const factory CommercioKycRequestedFaucetInviteState.error([String error]) =
      CommercioKycRequestedFaucetInviteStateError;
}

@freezed
@Implements(CommercioKycState)
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
@Implements(CommercioKycState)
abstract class CommercioKycInviteMemberState
    with _$CommercioKycInviteMemberState {
  const factory CommercioKycInviteMemberState({
    @required TransactionResult result,
  }) = CommercioKycInviteMemberStateData;

  const factory CommercioKycInviteMemberState.initial() =
      CommercioKycInviteMemberStateInitial;

  const factory CommercioKycInviteMemberState.loading() =
      CommercioKycInviteMemberStateLoading;

  const factory CommercioKycInviteMemberState.error([String error]) =
      CommercioKycInviteMemberStateError;
}
