import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

class RequestFaucetInviteFlatButton extends CommercioTextButton<
    CommercioKycRequestFaucetInviteBloc,
    CommercioKycRequestFaucetInviteEvent,
    CommercioKycRequestedFaucetInviteState,
    CommercioKycRequestedFaucetInviteStateLoading,
    CommercioKycRequestedFaucetInviteStateError> {
  const RequestFaucetInviteFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioKycRequestFaucetInviteEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}

class DeriveBuyMembershipFlatButton extends CommercioTextButton<
    CommercioKycDeriveBuyMembershipBloc,
    CommercioKycDeriveBuyMembershipEvent,
    CommercioKycDeriveBuyMembershipState,
    CommercioKycDeriveBuyMembershipStateLoading,
    CommercioKycDeriveBuyMembershipStateError> {
  const DeriveBuyMembershipFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioKycDeriveBuyMembershipEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}

class BuyMembershipsFlatButton extends CommercioTextButton<
    CommercioKycBuyMembershipsBloc,
    CommercioKycBuyMembershipsEvent,
    CommercioKycBuyMembershipsState,
    CommercioKycBuyMembershipsStateLoading,
    CommercioKycBuyMembershipsStateError> {
  const BuyMembershipsFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioKycBuyMembershipsEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}

class DeriveInviteMemberFlatButton extends CommercioTextButton<
    CommercioKycDeriveInviteMemberBloc,
    CommercioKycDeriveInviteMemberEvent,
    CommercioKycDeriveInviteMemberState,
    CommercioKycDeriveInviteMemberStateLoading,
    CommercioKycDeriveInviteMemberStateError> {
  const DeriveInviteMemberFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioKycDeriveInviteMemberEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}

class InviteMembersFlatButton extends CommercioTextButton<
    CommercioKycInviteMembersBloc,
    CommercioKycInviteMembersEvent,
    CommercioKycInviteMembersState,
    CommercioKycInviteMembersStateLoading,
    CommercioKycInviteMembersStateError> {
  const InviteMembersFlatButton({
    required Widget Function(BuildContext context) child,
    CommercioKycInviteMembersEvent Function()? event,
    Key? key,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    ButtonStyle? buttonStyle,
    Widget Function(BuildContext context)? loading,
    void Function(BuildContext context, String errorMessage)? error,
  }) : super(
          key: key,
          child: child,
          error: error,
          event: event,
          loading: loading,
          buttonStyle: buttonStyle,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
        );
}
