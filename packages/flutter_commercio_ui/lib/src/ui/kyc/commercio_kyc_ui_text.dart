import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

class RequestFaucetInviteText extends CommercioText<
    CommercioKycRequestFaucetInviteBloc,
    CommercioKycRequestFaucetInviteEvent,
    CommercioKycRequestedFaucetInviteState,
    CommercioKycRequestedFaucetInviteStateInitial,
    CommercioKycRequestedFaucetInviteStateData,
    CommercioKycRequestedFaucetInviteStateLoading,
    CommercioKycRequestedFaucetInviteStateError> {
  const RequestFaucetInviteText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioKycRequestedFaucetInviteState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}

class DeriveBuyMembershipText extends CommercioText<
    CommercioKycDeriveBuyMembershipBloc,
    CommercioKycDeriveBuyMembershipEvent,
    CommercioKycDeriveBuyMembershipState,
    CommercioKycDeriveBuyMembershipStateInitial,
    CommercioKycDeriveBuyMembershipStateData,
    CommercioKycDeriveBuyMembershipStateLoading,
    CommercioKycDeriveBuyMembershipStateError> {
  const DeriveBuyMembershipText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioKycDeriveBuyMembershipState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}

class BuyMembershipsText extends CommercioText<
    CommercioKycBuyMembershipsBloc,
    CommercioKycBuyMembershipsEvent,
    CommercioKycBuyMembershipsState,
    CommercioKycBuyMembershipsStateInitial,
    CommercioKycBuyMembershipsStateData,
    CommercioKycBuyMembershipsStateLoading,
    CommercioKycBuyMembershipsStateError> {
  const BuyMembershipsText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioKycBuyMembershipsState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}

class DeriveInviteMemberText extends CommercioText<
    CommercioKycDeriveInviteMemberBloc,
    CommercioKycDeriveInviteMemberEvent,
    CommercioKycDeriveInviteMemberState,
    CommercioKycDeriveInviteMemberStateInitial,
    CommercioKycDeriveInviteMemberStateData,
    CommercioKycDeriveInviteMemberStateLoading,
    CommercioKycDeriveInviteMemberStateError> {
  const DeriveInviteMemberText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioKycDeriveInviteMemberState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}

class InviteMembersText extends CommercioText<
    CommercioKycInviteMembersBloc,
    CommercioKycInviteMembersEvent,
    CommercioKycInviteMembersState,
    CommercioKycInviteMembersStateInitial,
    CommercioKycInviteMembersStateData,
    CommercioKycInviteMembersStateLoading,
    CommercioKycInviteMembersStateError> {
  const InviteMembersText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioKycInviteMembersState state)
        text,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextStyle? textStyle,
    CommercioTextStyle? loadingTextStyle,
    Key? key,
  }) : super(
          loading: loading,
          text: text,
          error: error,
          loadingTextStyle: loadingTextStyle,
          textStyle: textStyle,
          key: key,
        );
}
