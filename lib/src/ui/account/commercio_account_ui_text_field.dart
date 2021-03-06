import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RestoreWalletTextField extends CommercioTextField<
    CommercioAccountRestoreWalletBloc,
    CommercioAccountRestoreWalletEvent,
    CommercioAccountRestoredWalletState,
    CommercioAccountRestoredWalletStateInitial,
    CommercioAccountRestoredWalletStateData,
    CommercioAccountRestoredWalletStateLoading,
    CommercioAccountRestoredWalletStateError> {
  RestoreWalletTextField({
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration,
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextAlignVertical textAlignVertical,
    TextDirection textDirection,
    bool readOnly,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus,
    bool obscureText,
    bool autocorrect,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions,
    int maxLines,
    int minLines,
    bool expands,
    int maxLength,
    bool maxLengthEnforced,
    ValueChanged<String> onChanged,
    VoidCallback onEditingComplete,
    ValueChanged<String> onSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool enabled,
    double cursorWidth,
    Radius cursorRadius,
    Color cursorColor,
    ui.BoxHeightStyle selectionHeightStyle,
    ui.BoxWidthStyle selectionWidthStyle,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding,
    DragStartBehavior dragStartBehavior,
    bool enableInteractiveSelection,
    GestureTapCallback onTap,
    InputCounterWidgetBuilder buildCounter,
    ScrollPhysics scrollPhysics,
    ScrollController scrollController,
    @required String Function(BuildContext context) loading,
    @required
        String Function(BuildContext context,
                CommercioAccountRestoredWalletStateData state)
            text,
    TextStyle loadingStyle,
    String Function(BuildContext context, String errorMessage) error,
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
          error: error,
          loading: loading,
          loadingStyle: loadingStyle ?? TextStyle(color: Colors.grey),
          text: text,
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
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration,
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextAlignVertical textAlignVertical,
    TextDirection textDirection,
    bool readOnly,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus,
    bool obscureText,
    bool autocorrect,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions,
    int maxLines,
    int minLines,
    bool expands,
    int maxLength,
    bool maxLengthEnforced,
    ValueChanged<String> onChanged,
    VoidCallback onEditingComplete,
    ValueChanged<String> onSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool enabled,
    double cursorWidth,
    Radius cursorRadius,
    Color cursorColor,
    ui.BoxHeightStyle selectionHeightStyle,
    ui.BoxWidthStyle selectionWidthStyle,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding,
    DragStartBehavior dragStartBehavior,
    bool enableInteractiveSelection,
    GestureTapCallback onTap,
    InputCounterWidgetBuilder buildCounter,
    ScrollPhysics scrollPhysics,
    ScrollController scrollController,
    @required String Function(BuildContext context) loading,
    @required
        String Function(
                BuildContext context, CommercioAccountGenerateWalletData state)
            text,
    TextStyle loadingStyle,
    String Function(BuildContext context, String errorMessage) error,
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
          error: error,
          loading: loading,
          loadingStyle: loadingStyle ?? TextStyle(color: Colors.grey),
          text: text,
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
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration,
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextAlignVertical textAlignVertical,
    TextDirection textDirection,
    bool readOnly,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus,
    bool obscureText,
    bool autocorrect,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions,
    int maxLines,
    int minLines,
    bool expands,
    int maxLength,
    bool maxLengthEnforced,
    ValueChanged<String> onChanged,
    VoidCallback onEditingComplete,
    ValueChanged<String> onSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool enabled,
    double cursorWidth,
    Radius cursorRadius,
    Color cursorColor,
    ui.BoxHeightStyle selectionHeightStyle,
    ui.BoxWidthStyle selectionWidthStyle,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding,
    DragStartBehavior dragStartBehavior,
    bool enableInteractiveSelection,
    GestureTapCallback onTap,
    InputCounterWidgetBuilder buildCounter,
    ScrollPhysics scrollPhysics,
    ScrollController scrollController,
    @required String Function(BuildContext context) loading,
    @required
        String Function(
                BuildContext context, CommercioAccountFreeTokensStateData state)
            text,
    TextStyle loadingStyle,
    String Function(BuildContext context, String errorMessage) error,
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
          error: error,
          loading: loading,
          loadingStyle: loadingStyle ?? TextStyle(color: Colors.grey),
          text: text,
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
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration,
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextAlignVertical textAlignVertical,
    TextDirection textDirection,
    bool readOnly,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus,
    bool obscureText,
    bool autocorrect,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions,
    int maxLines,
    int minLines,
    bool expands,
    int maxLength,
    bool maxLengthEnforced,
    ValueChanged<String> onChanged,
    VoidCallback onEditingComplete,
    ValueChanged<String> onSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool enabled,
    double cursorWidth,
    Radius cursorRadius,
    Color cursorColor,
    ui.BoxHeightStyle selectionHeightStyle,
    ui.BoxWidthStyle selectionWidthStyle,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding,
    DragStartBehavior dragStartBehavior,
    bool enableInteractiveSelection,
    GestureTapCallback onTap,
    InputCounterWidgetBuilder buildCounter,
    ScrollPhysics scrollPhysics,
    ScrollController scrollController,
    @required String Function(BuildContext context) loading,
    @required
        String Function(
                BuildContext context, CommercioAccountBalanceStateData state)
            text,
    TextStyle loadingStyle,
    String Function(BuildContext context, String errorMessage) error,
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
          error: error,
          loading: loading,
          loadingStyle: loadingStyle ?? TextStyle(color: Colors.grey),
          text: text,
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
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration,
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextAlignVertical textAlignVertical,
    TextDirection textDirection,
    bool readOnly,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus,
    bool obscureText,
    bool autocorrect,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions,
    int maxLines,
    int minLines,
    bool expands,
    int maxLength,
    bool maxLengthEnforced,
    ValueChanged<String> onChanged,
    VoidCallback onEditingComplete,
    ValueChanged<String> onSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool enabled,
    double cursorWidth,
    Radius cursorRadius,
    Color cursorColor,
    ui.BoxHeightStyle selectionHeightStyle,
    ui.BoxWidthStyle selectionWidthStyle,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding,
    DragStartBehavior dragStartBehavior,
    bool enableInteractiveSelection,
    GestureTapCallback onTap,
    InputCounterWidgetBuilder buildCounter,
    ScrollPhysics scrollPhysics,
    ScrollController scrollController,
    @required String Function(BuildContext context) loading,
    @required
        String Function(
                BuildContext context, CommercioAccountSentTokensStateData state)
            text,
    TextStyle loadingStyle,
    String Function(BuildContext context, String errorMessage) error,
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
          error: error,
          loading: loading,
          loadingStyle: loadingStyle ?? TextStyle(color: Colors.grey),
          text: text,
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
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration,
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextAlignVertical textAlignVertical,
    TextDirection textDirection,
    bool readOnly,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus,
    bool obscureText,
    bool autocorrect,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions,
    int maxLines,
    int minLines,
    bool expands,
    int maxLength,
    bool maxLengthEnforced,
    ValueChanged<String> onChanged,
    VoidCallback onEditingComplete,
    ValueChanged<String> onSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool enabled,
    double cursorWidth,
    Radius cursorRadius,
    Color cursorColor,
    ui.BoxHeightStyle selectionHeightStyle,
    ui.BoxWidthStyle selectionWidthStyle,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding,
    DragStartBehavior dragStartBehavior,
    bool enableInteractiveSelection,
    GestureTapCallback onTap,
    InputCounterWidgetBuilder buildCounter,
    ScrollPhysics scrollPhysics,
    ScrollController scrollController,
    @required String Function(BuildContext context) loading,
    @required
        String Function(BuildContext context,
                CommercioAccountPaiwiseWalletStateData state)
            text,
    TextStyle loadingStyle,
    String Function(BuildContext context, String errorMessage) error,
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
          error: error,
          loading: loading,
          loadingStyle: loadingStyle ?? TextStyle(color: Colors.grey),
          text: text,
        );
}
