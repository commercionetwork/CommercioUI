import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

class RestoreWalletTextField extends CommercioTextField<
    CommercioAccountRestoreWalletBloc,
    CommercioAccountRestoreWalletEvent,
    CommercioAccountRestoredWalletState,
    CommercioAccountRestoredWalletStateInitial,
    CommercioAccountRestoredWalletStateData,
    CommercioAccountRestoredWalletStateLoading,
    CommercioAccountRestoredWalletStateError> {
  RestoreWalletTextField({
    required String Function(
            BuildContext context, CommercioAccountRestoredWalletState state)
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

class GenerateWalletTextField extends CommercioTextField<
    CommercioAccountGenerateWalletBloc,
    CommercioAccountGenerateWalletEvent,
    CommercioAccountGenerateWalletState,
    CommercioAccountGenerateWalletInitial,
    CommercioAccountGenerateWalletData,
    CommercioAccountGenerateWalletLoading,
    CommercioAccountGenerateWalletError> {
  GenerateWalletTextField({
    required String Function(
            BuildContext context, CommercioAccountGenerateWalletState state)
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

class RequestFreeTokensTextField extends CommercioTextField<
    CommercioAccountRequestFreeTokensBloc,
    CommercioAccountRequestFreeTokensEvent,
    CommercioAccountFreeTokensState,
    CommercioAccountFreeTokensStateInitial,
    CommercioAccountFreeTokensStateData,
    CommercioAccountFreeTokensStateLoading,
    CommercioAccountFreeTokensStateError> {
  RequestFreeTokensTextField({
    required String Function(
            BuildContext context, CommercioAccountFreeTokensState state)
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

class CheckBalanceTextField extends CommercioTextField<
    CommercioAccountCheckBalanceBloc,
    CommercioAccountCheckBalanceEvent,
    CommercioAccountBalanceState,
    CommercioAccountBalanceStateInitial,
    CommercioAccountBalanceStateData,
    CommercioAccountBalanceStateLoading,
    CommercioAccountBalanceStateError> {
  CheckBalanceTextField({
    required String Function(
            BuildContext context, CommercioAccountBalanceState state)
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

class SendTokensTextField extends CommercioTextField<
    CommercioAccountSendTokensBloc,
    CommercioAccountSendTokensEvent,
    CommercioAccountSentTokensState,
    CommercioAccountSentTokensStateInitial,
    CommercioAccountSentTokensStateData,
    CommercioAccountSentTokensStateLoading,
    CommercioAccountSentTokensStateError> {
  SendTokensTextField({
    required String Function(
            BuildContext context, CommercioAccountSentTokensState state)
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

class GeneratePairwiseWalletTextField extends CommercioTextField<
    CommercioAccountGeneratePairwiseWalletBloc,
    CommercioAccountGeneratePairwiseWalletEvent,
    CommercioAccountPaiwiseWalletState,
    CommercioAccountPaiwiseWalletStateInitial,
    CommercioAccountPaiwiseWalletStateData,
    CommercioAccountPaiwiseWalletStateLoading,
    CommercioAccountPaiwiseWalletStateError> {
  GeneratePairwiseWalletTextField({
    required String Function(
            BuildContext context, CommercioAccountPaiwiseWalletState state)
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
