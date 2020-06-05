import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RestoreWalletCommercioAccountTextField extends CommercioTextField<
    CommercioAccountBloc,
    CommercioAccountEvent,
    CommercioAccountState,
    CommercioAccountLoadingRestoreWallet,
    CommercioAccountRestoredWithWallet,
    CommercioAccountInitial,
    CommercioAccountGenerateWalletError> {
  RestoreWalletCommercioAccountTextField({
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration = const InputDecoration(),
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign = TextAlign.start,
    TextAlignVertical textAlignVertical,
    TextDirection textDirection,
    bool readOnly = false,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus = false,
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions = true,
    int maxLines = 1,
    int minLines,
    bool expands = false,
    int maxLength,
    bool maxLengthEnforced = true,
    ValueChanged<String> onChanged,
    VoidCallback onEditingComplete,
    ValueChanged<String> onSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool enabled,
    double cursorWidth = 2.0,
    Radius cursorRadius,
    Color cursorColor,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    GestureTapCallback onTap,
    InputCounterWidgetBuilder buildCounter,
    ScrollPhysics scrollPhysics,
    ScrollController scrollController,
    @required String Function(CommercioAccountWithWallet state) textCallback,
    @required String Function() loadingTextCallback,
    TextStyle loadingStyle,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          controller: controller,
          focusNode: focusNode,
          decoration: decoration,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          style: style,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          textDirection: textDirection,
          readOnly: readOnly,
          toolbarOptions: toolbarOptions,
          showCursor: showCursor,
          autofocus: autofocus,
          obscureText: obscureText,
          autocorrect: autocorrect,
          smartDashesType: smartDashesType,
          smartQuotesType: smartQuotesType,
          enableSuggestions: enableSuggestions,
          maxLines: maxLines,
          minLines: minLines,
          expands: expands,
          maxLength: maxLength,
          maxLengthEnforced: maxLengthEnforced,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          inputFormatters: inputFormatters,
          enabled: enabled,
          cursorWidth: cursorWidth,
          cursorRadius: cursorRadius,
          cursorColor: cursorColor,
          selectionHeightStyle: selectionHeightStyle,
          selectionWidthStyle: selectionWidthStyle,
          keyboardAppearance: keyboardAppearance,
          scrollPadding: scrollPadding,
          enableInteractiveSelection: enableInteractiveSelection,
          dragStartBehavior: dragStartBehavior,
          onTap: onTap,
          buildCounter: buildCounter,
          scrollPhysics: scrollPhysics,
          scrollController: scrollController,
          textCallback: textCallback,
          loadingTextCallback: loadingTextCallback,
          loadingStyle: loadingStyle ?? TextStyle(color: Colors.grey),
          errorCallback: errorCallback,
        );
}

class GenerateWalletCommercioAccountTextField extends CommercioTextField<
    CommercioAccountBloc,
    CommercioAccountEvent,
    CommercioAccountState,
    CommercioAccountLoadingGenerateWallet,
    CommercioAccountGeneratedWithWallet,
    CommercioAccountInitial,
    CommercioAccountRestoreWalletError> {
  GenerateWalletCommercioAccountTextField({
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration = const InputDecoration(),
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign = TextAlign.start,
    TextAlignVertical textAlignVertical,
    TextDirection textDirection,
    bool readOnly = false,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus = false,
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions = true,
    int maxLines = 1,
    int minLines,
    bool expands = false,
    int maxLength,
    bool maxLengthEnforced = true,
    ValueChanged<String> onChanged,
    VoidCallback onEditingComplete,
    ValueChanged<String> onSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool enabled,
    double cursorWidth = 2.0,
    Radius cursorRadius,
    Color cursorColor,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    GestureTapCallback onTap,
    InputCounterWidgetBuilder buildCounter,
    ScrollPhysics scrollPhysics,
    ScrollController scrollController,
    @required String Function(CommercioAccountWithWallet state) textCallback,
    @required String Function() loadingTextCallback,
    TextStyle loadingStyle,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          controller: controller,
          focusNode: focusNode,
          decoration: decoration,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          style: style,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          textDirection: textDirection,
          readOnly: readOnly,
          toolbarOptions: toolbarOptions,
          showCursor: showCursor,
          autofocus: autofocus,
          obscureText: obscureText,
          autocorrect: autocorrect,
          smartDashesType: smartDashesType,
          smartQuotesType: smartQuotesType,
          enableSuggestions: enableSuggestions,
          maxLines: maxLines,
          minLines: minLines,
          expands: expands,
          maxLength: maxLength,
          maxLengthEnforced: maxLengthEnforced,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          inputFormatters: inputFormatters,
          enabled: enabled,
          cursorWidth: cursorWidth,
          cursorRadius: cursorRadius,
          cursorColor: cursorColor,
          selectionHeightStyle: selectionHeightStyle,
          selectionWidthStyle: selectionWidthStyle,
          keyboardAppearance: keyboardAppearance,
          scrollPadding: scrollPadding,
          enableInteractiveSelection: enableInteractiveSelection,
          dragStartBehavior: dragStartBehavior,
          onTap: onTap,
          buildCounter: buildCounter,
          scrollPhysics: scrollPhysics,
          scrollController: scrollController,
          textCallback: textCallback,
          loadingTextCallback: loadingTextCallback,
          loadingStyle: loadingStyle ?? TextStyle(color: Colors.grey),
          errorCallback: errorCallback,
        );
}

class RequestFreeTokensCommercioAccountTextField extends CommercioTextField<
    CommercioAccountBloc,
    CommercioAccountEvent,
    CommercioAccountState,
    CommercioAccountLoadingRequestFreeTokensWallet,
    CommercioAccountWithWalletFreeTokens,
    CommercioAccountInitial,
    CommercioAccountRequestFreeTokensError> {
  RequestFreeTokensCommercioAccountTextField({
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration = const InputDecoration(),
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign = TextAlign.start,
    TextAlignVertical textAlignVertical,
    TextDirection textDirection,
    bool readOnly = false,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus = false,
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions = true,
    int maxLines = 1,
    int minLines,
    bool expands = false,
    int maxLength,
    bool maxLengthEnforced = true,
    ValueChanged<String> onChanged,
    VoidCallback onEditingComplete,
    ValueChanged<String> onSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool enabled,
    double cursorWidth = 2.0,
    Radius cursorRadius,
    Color cursorColor,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    GestureTapCallback onTap,
    InputCounterWidgetBuilder buildCounter,
    ScrollPhysics scrollPhysics,
    ScrollController scrollController,
    @required
        String Function(CommercioAccountWithWalletFreeTokens state)
            textCallback,
    @required String Function() loadingTextCallback,
    TextStyle loadingStyle,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          controller: controller,
          focusNode: focusNode,
          decoration: decoration,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          style: style,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          textDirection: textDirection,
          readOnly: readOnly,
          toolbarOptions: toolbarOptions,
          showCursor: showCursor,
          autofocus: autofocus,
          obscureText: obscureText,
          autocorrect: autocorrect,
          smartDashesType: smartDashesType,
          smartQuotesType: smartQuotesType,
          enableSuggestions: enableSuggestions,
          maxLines: maxLines,
          minLines: minLines,
          expands: expands,
          maxLength: maxLength,
          maxLengthEnforced: maxLengthEnforced,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          inputFormatters: inputFormatters,
          enabled: enabled,
          cursorWidth: cursorWidth,
          cursorRadius: cursorRadius,
          cursorColor: cursorColor,
          selectionHeightStyle: selectionHeightStyle,
          selectionWidthStyle: selectionWidthStyle,
          keyboardAppearance: keyboardAppearance,
          scrollPadding: scrollPadding,
          enableInteractiveSelection: enableInteractiveSelection,
          dragStartBehavior: dragStartBehavior,
          onTap: onTap,
          buildCounter: buildCounter,
          scrollPhysics: scrollPhysics,
          scrollController: scrollController,
          textCallback: textCallback,
          loadingTextCallback: loadingTextCallback,
          loadingStyle: loadingStyle ?? TextStyle(color: Colors.grey),
          errorCallback: errorCallback,
        );
}

class CheckBalanceCommercioAccountTextField extends CommercioTextField<
    CommercioAccountBloc,
    CommercioAccountEvent,
    CommercioAccountState,
    CommercioAccountLoadingCheckBalance,
    CommercioAccountBalance,
    CommercioAccountInitial,
    CommercioAccountCheckBalanceError> {
  CheckBalanceCommercioAccountTextField({
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration = const InputDecoration(),
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign = TextAlign.start,
    TextAlignVertical textAlignVertical,
    TextDirection textDirection,
    bool readOnly = false,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus = false,
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions = true,
    int maxLines = 1,
    int minLines,
    bool expands = false,
    int maxLength,
    bool maxLengthEnforced = true,
    ValueChanged<String> onChanged,
    VoidCallback onEditingComplete,
    ValueChanged<String> onSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool enabled,
    double cursorWidth = 2.0,
    Radius cursorRadius,
    Color cursorColor,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    GestureTapCallback onTap,
    InputCounterWidgetBuilder buildCounter,
    ScrollPhysics scrollPhysics,
    ScrollController scrollController,
    @required String Function(CommercioAccountBalance state) textCallback,
    @required String Function() loadingTextCallback,
    TextStyle loadingStyle,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          controller: controller,
          focusNode: focusNode,
          decoration: decoration,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          style: style,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          textDirection: textDirection,
          readOnly: readOnly,
          toolbarOptions: toolbarOptions,
          showCursor: showCursor,
          autofocus: autofocus,
          obscureText: obscureText,
          autocorrect: autocorrect,
          smartDashesType: smartDashesType,
          smartQuotesType: smartQuotesType,
          enableSuggestions: enableSuggestions,
          maxLines: maxLines,
          minLines: minLines,
          expands: expands,
          maxLength: maxLength,
          maxLengthEnforced: maxLengthEnforced,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          inputFormatters: inputFormatters,
          enabled: enabled,
          cursorWidth: cursorWidth,
          cursorRadius: cursorRadius,
          cursorColor: cursorColor,
          selectionHeightStyle: selectionHeightStyle,
          selectionWidthStyle: selectionWidthStyle,
          keyboardAppearance: keyboardAppearance,
          scrollPadding: scrollPadding,
          enableInteractiveSelection: enableInteractiveSelection,
          dragStartBehavior: dragStartBehavior,
          onTap: onTap,
          buildCounter: buildCounter,
          scrollPhysics: scrollPhysics,
          scrollController: scrollController,
          textCallback: textCallback,
          loadingTextCallback: loadingTextCallback,
          loadingStyle: loadingStyle ?? TextStyle(color: Colors.grey),
          errorCallback: errorCallback,
        );
}

class SendTokensCommercioAccountTextField extends CommercioTextField<
    CommercioAccountBloc,
    CommercioAccountEvent,
    CommercioAccountState,
    CommercioAccountLoadingSendTokens,
    CommercioAccountSentTokens,
    CommercioAccountInitial,
    CommercioAccountSendTokensError> {
  SendTokensCommercioAccountTextField({
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration = const InputDecoration(),
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign = TextAlign.start,
    TextAlignVertical textAlignVertical,
    TextDirection textDirection,
    bool readOnly = false,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus = false,
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions = true,
    int maxLines = 1,
    int minLines,
    bool expands = false,
    int maxLength,
    bool maxLengthEnforced = true,
    ValueChanged<String> onChanged,
    VoidCallback onEditingComplete,
    ValueChanged<String> onSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool enabled,
    double cursorWidth = 2.0,
    Radius cursorRadius,
    Color cursorColor,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    GestureTapCallback onTap,
    InputCounterWidgetBuilder buildCounter,
    ScrollPhysics scrollPhysics,
    ScrollController scrollController,
    @required String Function(CommercioAccountSentTokens state) textCallback,
    @required String Function() loadingTextCallback,
    TextStyle loadingStyle,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          controller: controller,
          focusNode: focusNode,
          decoration: decoration,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          style: style,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          textDirection: textDirection,
          readOnly: readOnly,
          toolbarOptions: toolbarOptions,
          showCursor: showCursor,
          autofocus: autofocus,
          obscureText: obscureText,
          autocorrect: autocorrect,
          smartDashesType: smartDashesType,
          smartQuotesType: smartQuotesType,
          enableSuggestions: enableSuggestions,
          maxLines: maxLines,
          minLines: minLines,
          expands: expands,
          maxLength: maxLength,
          maxLengthEnforced: maxLengthEnforced,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          inputFormatters: inputFormatters,
          enabled: enabled,
          cursorWidth: cursorWidth,
          cursorRadius: cursorRadius,
          cursorColor: cursorColor,
          selectionHeightStyle: selectionHeightStyle,
          selectionWidthStyle: selectionWidthStyle,
          keyboardAppearance: keyboardAppearance,
          scrollPadding: scrollPadding,
          enableInteractiveSelection: enableInteractiveSelection,
          dragStartBehavior: dragStartBehavior,
          onTap: onTap,
          buildCounter: buildCounter,
          scrollPhysics: scrollPhysics,
          scrollController: scrollController,
          textCallback: textCallback,
          loadingTextCallback: loadingTextCallback,
          loadingStyle: loadingStyle ?? TextStyle(color: Colors.grey),
          errorCallback: errorCallback,
        );
}

class GeneratePairwiseWalletCommercioAccountTextField
    extends CommercioTextField<
        CommercioAccountBloc,
        CommercioAccountEvent,
        CommercioAccountState,
        CommercioAccountLoadingGeneratePairwiseWallet,
        CommercioAccountGeneratedPaiwiseWallet,
        CommercioAccountInitial,
        CommercioAccountSendTokensError> {
  GeneratePairwiseWalletCommercioAccountTextField({
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration = const InputDecoration(),
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign = TextAlign.start,
    TextAlignVertical textAlignVertical,
    TextDirection textDirection,
    bool readOnly = false,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus = false,
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions = true,
    int maxLines = 1,
    int minLines,
    bool expands = false,
    int maxLength,
    bool maxLengthEnforced = true,
    ValueChanged<String> onChanged,
    VoidCallback onEditingComplete,
    ValueChanged<String> onSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool enabled,
    double cursorWidth = 2.0,
    Radius cursorRadius,
    Color cursorColor,
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    GestureTapCallback onTap,
    InputCounterWidgetBuilder buildCounter,
    ScrollPhysics scrollPhysics,
    ScrollController scrollController,
    @required
        String Function(CommercioAccountGeneratedPaiwiseWallet state)
            textCallback,
    @required String Function() loadingTextCallback,
    TextStyle loadingStyle,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          controller: controller,
          focusNode: focusNode,
          decoration: decoration,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          style: style,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          textDirection: textDirection,
          readOnly: readOnly,
          toolbarOptions: toolbarOptions,
          showCursor: showCursor,
          autofocus: autofocus,
          obscureText: obscureText,
          autocorrect: autocorrect,
          smartDashesType: smartDashesType,
          smartQuotesType: smartQuotesType,
          enableSuggestions: enableSuggestions,
          maxLines: maxLines,
          minLines: minLines,
          expands: expands,
          maxLength: maxLength,
          maxLengthEnforced: maxLengthEnforced,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          inputFormatters: inputFormatters,
          enabled: enabled,
          cursorWidth: cursorWidth,
          cursorRadius: cursorRadius,
          cursorColor: cursorColor,
          selectionHeightStyle: selectionHeightStyle,
          selectionWidthStyle: selectionWidthStyle,
          keyboardAppearance: keyboardAppearance,
          scrollPadding: scrollPadding,
          enableInteractiveSelection: enableInteractiveSelection,
          dragStartBehavior: dragStartBehavior,
          onTap: onTap,
          buildCounter: buildCounter,
          scrollPhysics: scrollPhysics,
          scrollController: scrollController,
          textCallback: textCallback,
          loadingTextCallback: loadingTextCallback,
          loadingStyle: loadingStyle ?? TextStyle(color: Colors.grey),
          errorCallback: errorCallback,
        );
}
