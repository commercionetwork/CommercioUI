import 'package:flutter/material.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

class RestoreWalletText extends CommercioText<
    CommercioAccountRestoreWalletBloc,
    CommercioAccountRestoreWalletEvent,
    CommercioAccountRestoredWalletState,
    CommercioAccountRestoredWalletStateInitial,
    CommercioAccountRestoredWalletStateData,
    CommercioAccountRestoredWalletStateLoading,
    CommercioAccountRestoredWalletStateError> {
  const RestoreWalletText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioAccountRestoredWalletState state)
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

class GenerateWalletText extends CommercioText<
    CommercioAccountGenerateWalletBloc,
    CommercioAccountGenerateWalletEvent,
    CommercioAccountGenerateWalletState,
    CommercioAccountGenerateWalletInitial,
    CommercioAccountGenerateWalletData,
    CommercioAccountGenerateWalletLoading,
    CommercioAccountGenerateWalletError> {
  const GenerateWalletText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioAccountGenerateWalletState state)
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

class RequestFreeTokensText extends CommercioText<
    CommercioAccountRequestFreeTokensBloc,
    CommercioAccountRequestFreeTokensEvent,
    CommercioAccountFreeTokensState,
    CommercioAccountFreeTokensStateInitial,
    CommercioAccountFreeTokensStateData,
    CommercioAccountFreeTokensStateLoading,
    CommercioAccountFreeTokensStateError> {
  const RequestFreeTokensText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioAccountFreeTokensState state)
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

class CheckBalanceText extends CommercioText<
    CommercioAccountCheckBalanceBloc,
    CommercioAccountCheckBalanceEvent,
    CommercioAccountBalanceState,
    CommercioAccountBalanceStateInitial,
    CommercioAccountBalanceStateData,
    CommercioAccountBalanceStateLoading,
    CommercioAccountBalanceStateError> {
  const CheckBalanceText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioAccountBalanceState state)
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

class SendTokensText extends CommercioText<
    CommercioAccountSendTokensBloc,
    CommercioAccountSendTokensEvent,
    CommercioAccountSentTokensState,
    CommercioAccountSentTokensStateInitial,
    CommercioAccountSentTokensStateData,
    CommercioAccountSentTokensStateLoading,
    CommercioAccountSentTokensStateError> {
  const SendTokensText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioAccountSentTokensState state)
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

class GeneratePairwiseWalletText extends CommercioText<
    CommercioAccountGeneratePairwiseWalletBloc,
    CommercioAccountGeneratePairwiseWalletEvent,
    CommercioAccountPaiwiseWalletState,
    CommercioAccountPaiwiseWalletStateInitial,
    CommercioAccountPaiwiseWalletStateData,
    CommercioAccountPaiwiseWalletStateLoading,
    CommercioAccountPaiwiseWalletStateError> {
  const GeneratePairwiseWalletText({
    required String Function(BuildContext context) loading,
    required String Function(
            BuildContext context, CommercioAccountPaiwiseWalletState state)
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
