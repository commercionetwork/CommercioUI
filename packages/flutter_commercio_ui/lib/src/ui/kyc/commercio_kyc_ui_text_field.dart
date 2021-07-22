import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

class RequestFaucetInviteTextField extends CommercioTextField<
    CommercioKycRequestFaucetInviteBloc,
    CommercioKycRequestFaucetInviteEvent,
    CommercioKycRequestedFaucetInviteState,
    CommercioKycRequestedFaucetInviteStateInitial,
    CommercioKycRequestedFaucetInviteStateData,
    CommercioKycRequestedFaucetInviteStateLoading,
    CommercioKycRequestedFaucetInviteStateError> {
  RequestFaucetInviteTextField({
    required String Function(
            BuildContext context, CommercioKycRequestedFaucetInviteState state)
        text,
    TextEditingController? controller,
    FocusNode? focusNode,
    bool autofocus = false,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    AppPrivateCommandCallback? onAppPrivateCommand,
    bool? enabled,
    VoidCallback? onTap,
    String Function(BuildContext context)? loading,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextFieldStyle? textFieldStyle,
    CommercioTextFieldStyle? textFieldLoadingStyle,
    String? restorationId,
    Key? key,
  }) : super(
          key: key,
          text: text,
          autofocus: autofocus,
          controller: controller,
          enabled: enabled,
          error: error,
          focusNode: focusNode,
          loading: loading,
          onAppPrivateCommand: onAppPrivateCommand,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          onTap: onTap,
          restorationId: restorationId,
          textFieldLoadingStyle: textFieldLoadingStyle,
          textFieldStyle: textFieldStyle,
        );
}

class DeriveBuyMembershipTextField extends CommercioTextField<
    CommercioKycDeriveBuyMembershipBloc,
    CommercioKycDeriveBuyMembershipEvent,
    CommercioKycDeriveBuyMembershipState,
    CommercioKycDeriveBuyMembershipStateInitial,
    CommercioKycDeriveBuyMembershipStateData,
    CommercioKycDeriveBuyMembershipStateLoading,
    CommercioKycDeriveBuyMembershipStateError> {
  DeriveBuyMembershipTextField({
    required String Function(
            BuildContext context, CommercioKycDeriveBuyMembershipState state)
        text,
    TextEditingController? controller,
    FocusNode? focusNode,
    bool autofocus = false,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    AppPrivateCommandCallback? onAppPrivateCommand,
    bool? enabled,
    VoidCallback? onTap,
    String Function(BuildContext context)? loading,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextFieldStyle? textFieldStyle,
    CommercioTextFieldStyle? textFieldLoadingStyle,
    String? restorationId,
    Key? key,
  }) : super(
          key: key,
          text: text,
          autofocus: autofocus,
          controller: controller,
          enabled: enabled,
          error: error,
          focusNode: focusNode,
          loading: loading,
          onAppPrivateCommand: onAppPrivateCommand,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          onTap: onTap,
          restorationId: restorationId,
          textFieldLoadingStyle: textFieldLoadingStyle,
          textFieldStyle: textFieldStyle,
        );
}

class BuyMembershipsTextField extends CommercioTextField<
    CommercioKycBuyMembershipsBloc,
    CommercioKycBuyMembershipsEvent,
    CommercioKycBuyMembershipsState,
    CommercioKycBuyMembershipsStateInitial,
    CommercioKycBuyMembershipsStateData,
    CommercioKycBuyMembershipsStateLoading,
    CommercioKycBuyMembershipsStateError> {
  BuyMembershipsTextField({
    required String Function(
            BuildContext context, CommercioKycBuyMembershipsState state)
        text,
    TextEditingController? controller,
    FocusNode? focusNode,
    bool autofocus = false,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    AppPrivateCommandCallback? onAppPrivateCommand,
    bool? enabled,
    VoidCallback? onTap,
    String Function(BuildContext context)? loading,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextFieldStyle? textFieldStyle,
    CommercioTextFieldStyle? textFieldLoadingStyle,
    String? restorationId,
    Key? key,
  }) : super(
          key: key,
          text: text,
          autofocus: autofocus,
          controller: controller,
          enabled: enabled,
          error: error,
          focusNode: focusNode,
          loading: loading,
          onAppPrivateCommand: onAppPrivateCommand,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          onTap: onTap,
          restorationId: restorationId,
          textFieldLoadingStyle: textFieldLoadingStyle,
          textFieldStyle: textFieldStyle,
        );
}

class DeriveInviteMemberTextField extends CommercioTextField<
    CommercioKycDeriveInviteMemberBloc,
    CommercioKycDeriveInviteMemberEvent,
    CommercioKycDeriveInviteMemberState,
    CommercioKycDeriveInviteMemberStateInitial,
    CommercioKycDeriveInviteMemberStateData,
    CommercioKycDeriveInviteMemberStateLoading,
    CommercioKycDeriveInviteMemberStateError> {
  DeriveInviteMemberTextField({
    required String Function(
            BuildContext context, CommercioKycDeriveInviteMemberState state)
        text,
    TextEditingController? controller,
    FocusNode? focusNode,
    bool autofocus = false,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    AppPrivateCommandCallback? onAppPrivateCommand,
    bool? enabled,
    VoidCallback? onTap,
    String Function(BuildContext context)? loading,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextFieldStyle? textFieldStyle,
    CommercioTextFieldStyle? textFieldLoadingStyle,
    String? restorationId,
    Key? key,
  }) : super(
          key: key,
          text: text,
          autofocus: autofocus,
          controller: controller,
          enabled: enabled,
          error: error,
          focusNode: focusNode,
          loading: loading,
          onAppPrivateCommand: onAppPrivateCommand,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          onTap: onTap,
          restorationId: restorationId,
          textFieldLoadingStyle: textFieldLoadingStyle,
          textFieldStyle: textFieldStyle,
        );
}

class InviteMembersTextField extends CommercioTextField<
    CommercioKycInviteMembersBloc,
    CommercioKycInviteMembersEvent,
    CommercioKycInviteMembersState,
    CommercioKycInviteMembersStateInitial,
    CommercioKycInviteMembersStateData,
    CommercioKycInviteMembersStateLoading,
    CommercioKycInviteMembersStateError> {
  InviteMembersTextField({
    required String Function(
            BuildContext context, CommercioKycInviteMembersState state)
        text,
    TextEditingController? controller,
    FocusNode? focusNode,
    bool autofocus = false,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    AppPrivateCommandCallback? onAppPrivateCommand,
    bool? enabled,
    VoidCallback? onTap,
    String Function(BuildContext context)? loading,
    String Function(BuildContext context, String errorMessage)? error,
    CommercioTextFieldStyle? textFieldStyle,
    CommercioTextFieldStyle? textFieldLoadingStyle,
    String? restorationId,
    Key? key,
  }) : super(
          key: key,
          text: text,
          autofocus: autofocus,
          controller: controller,
          enabled: enabled,
          error: error,
          focusNode: focusNode,
          loading: loading,
          onAppPrivateCommand: onAppPrivateCommand,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          onTap: onTap,
          restorationId: restorationId,
          textFieldLoadingStyle: textFieldLoadingStyle,
          textFieldStyle: textFieldStyle,
        );
}
