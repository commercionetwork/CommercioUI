import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GenerateKeysTextField extends CommercioTextField<
    CommercioIdGenerateKeysBloc,
    CommercioIdGenerateKeysEvent,
    CommercioIdGeneratedKeysState,
    CommercioIdGeneratedKeysStateInitial,
    CommercioIdGeneratedKeysStateData,
    CommercioIdGeneratedKeysStateLoading,
    CommercioIdGeneratedKeysStateError> {
  GenerateKeysTextField({
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
                BuildContext context, CommercioIdGeneratedKeysStateData state)
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

class RestoreKeysTextField extends CommercioTextField<
    CommercioIdRestoreKeysBloc,
    CommercioIdRestoreKeysEvent,
    CommercioIdRestoredKeysState,
    CommercioIdRestoredKeysStateInitial,
    CommercioIdRestoredKeysStateData,
    CommercioIdRestoredKeysStateLoading,
    CommercioIdRestoredKeysStateError> {
  RestoreKeysTextField({
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
                BuildContext context, CommercioIdRestoredKeysStateData state)
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

class DeleteKeysTextField extends CommercioTextField<
    CommercioIdDeleteKeysBloc,
    CommercioIdDeleteKeysEvent,
    CommercioIdDeletedKeysState,
    CommercioIdDeletedKeysStateInitial,
    CommercioIdDeletedKeysStateData,
    CommercioIdDeletedKeysStateLoading,
    CommercioIdDeletedKeysStateError> {
  DeleteKeysTextField({
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
                BuildContext context, CommercioIdDeletedKeysStateData state)
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

class DeriveDidDocumentTextField extends CommercioTextField<
    CommercioIdDeriveDidDocumentBloc,
    CommercioIdDeriveDidDocumentEvent,
    CommercioIdDerivedDidDocumentState,
    CommercioIdDerivedDidDocumentStateInitial,
    CommercioIdDerivedDidDocumentStateData,
    CommercioIdDerivedDidDocumentStateLoading,
    CommercioIdDerivedDidDocumentStateError> {
  DeriveDidDocumentTextField({
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
                CommercioIdDerivedDidDocumentStateData state)
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

class SetDidDocumentTextField extends CommercioTextField<
    CommercioIdSetDidDocumentsBloc,
    CommercioIdSetDidDocumentsEvent,
    CommercioIdSetDidDocumentsState,
    CommercioIdSetDidDocumentsStateInitial,
    CommercioIdSetDidDocumentsStateData,
    CommercioIdSetDidDocumentsStateLoading,
    CommercioIdSetDidDocumentsStateError> {
  SetDidDocumentTextField({
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
                BuildContext context, CommercioIdSetDidDocumentsStateData state)
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

class RechargeTumblerTextField extends CommercioTextField<
    CommercioIdRechargeTumblerBloc,
    CommercioIdRechargeTumblerEvent,
    CommercioIdRechargedTumblerState,
    CommercioIdRechargedTumblerStateInitial,
    CommercioIdRechargedTumblerStateData,
    CommercioIdRechargedTumblerStateLoading,
    CommercioIdRechargedTumblerStateError> {
  RechargeTumblerTextField({
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
                CommercioIdRechargedTumblerStateData state)
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

class DeriveDidPowerUpRequestTextField extends CommercioTextField<
    CommercioIdDeriveDidPowerUpRequestBloc,
    CommercioIdDeriveDidPowerUpRequestEvent,
    CommercioIdDeriveDidPowerUpRequestState,
    CommercioIdDeriveDidPowerUpRequestStateInitial,
    CommercioIdDeriveDidPowerUpRequestStateData,
    CommercioIdDeriveDidPowerUpRequestStateLoading,
    CommercioIdDeriveDidPowerUpRequestStateError> {
  DeriveDidPowerUpRequestTextField({
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
                CommercioIdDeriveDidPowerUpRequestStateData state)
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

class RequestDidPowerUpTextField extends CommercioTextField<
    CommercioIdRequestDidPowerUpsBloc,
    CommercioIdRequestDidPowerUpsEvent,
    CommercioIdRequestedDidPowerUpsState,
    CommercioIdRequestedDidPowerUpsStateInitial,
    CommercioIdRequestedDidPowerUpsStateData,
    CommercioIdRequestedDidPowerUpsStateLoading,
    CommercioIdRequestedDidPowerUpsStateError> {
  RequestDidPowerUpTextField({
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
                CommercioIdRequestedDidPowerUpsStateData state)
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
