import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:commercio_ui/src/core/utils/type_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class CommercioTextFieldStyle with Diagnosticable {
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool readOnly;
  final ToolbarOptions toolbarOptions;
  final bool? showCursor;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType smartDashesType;
  final SmartQuotesType smartQuotesType;
  final bool enableSuggestions;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final List<TextInputFormatter>? inputFormatters;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final ui.BoxHeightStyle selectionHeightStyle;
  final ui.BoxWidthStyle selectionWidthStyle;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final DragStartBehavior dragStartBehavior;
  final bool enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final MouseCursor? mouseCursor;
  final InputCounterWidgetBuilder? buildCounter;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;

  const CommercioTextFieldStyle({
    this.decoration = const InputDecoration(),
    TextInputType? keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    ToolbarOptions? toolbarOptions,
    this.showCursor,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.inputFormatters,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection = true,
    this.selectionControls,
    this.mouseCursor,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints,
  })  : smartDashesType = smartDashesType ??
            (obscureText ? SmartDashesType.disabled : SmartDashesType.enabled),
        smartQuotesType = smartQuotesType ??
            (obscureText ? SmartQuotesType.disabled : SmartQuotesType.enabled),
        keyboardType = keyboardType ??
            (maxLines == 1 ? TextInputType.text : TextInputType.multiline),
        toolbarOptions = toolbarOptions ??
            (obscureText
                ? const ToolbarOptions(
                    selectAll: true,
                    paste: true,
                  )
                : const ToolbarOptions(
                    copy: true,
                    cut: true,
                    selectAll: true,
                    paste: true,
                  ));
}

class CommercioTextField<B extends Bloc<E, T>, E, T, I extends T, D extends T,
    L extends T, ERR extends T> extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final bool autofocus;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final AppPrivateCommandCallback? onAppPrivateCommand;
  final bool? enabled;
  final VoidCallback? onTap;
  final String Function(BuildContext context)? loading;
  final String Function(BuildContext context, D state) text;
  final String Function(BuildContext context, String errorMessage)? error;
  final CommercioTextFieldStyle textFieldStyle;
  final CommercioTextFieldStyle textFieldLoadingStyle;
  final String? restorationId;

  CommercioTextField({
    Key? key,
    required this.text,
    TextEditingController? controller,
    this.autofocus = false,
    this.enabled,
    this.error,
    this.focusNode,
    this.loading,
    this.onAppPrivateCommand,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onTap,
    CommercioTextFieldStyle? textFieldLoadingStyle,
    CommercioTextFieldStyle? textFieldStyle,
    this.restorationId,
  })  : controller = controller ?? TextEditingController(),
        textFieldLoadingStyle =
            textFieldLoadingStyle ?? const CommercioTextFieldStyle(),
        textFieldStyle = textFieldStyle ?? const CommercioTextFieldStyle(),
        super(key: key);

  @override
  _CommercioTextFieldState<B, E, T, I, D, L, ERR> createState() =>
      _CommercioTextFieldState<B, E, T, I, D, L, ERR>();
}

class _CommercioTextFieldState<
    B extends Bloc<E, T>,
    E,
    T,
    I extends T,
    D extends T,
    L extends T,
    ERR extends T> extends State<CommercioTextField<B, E, T, I, D, L, ERR>> {
  String previousText = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, T>(
      builder: (context, state) {
        CommercioTextFieldStyle style = widget.textFieldStyle;

        if (TypeHelper.hasType(state.runtimeType, I)) {
          widget.controller.text = '';
        }

        if (TypeHelper.hasType(state.runtimeType, D)) {
          widget.controller.text =
              previousText = widget.text(context, state as D);
        }

        if (TypeHelper.hasType(state.runtimeType, L)) {
          if (widget.loading != null) {
            widget.controller.text = widget.loading!(context);
            style = widget.textFieldLoadingStyle;
          } else {
            widget.controller.text = '';
          }
        }

        if (TypeHelper.hasType(state.runtimeType, ERR)) {
          // [state] must be dynamic to call the [error] getter on it.
          widget.controller.text = widget.error != null
              ? widget.error!(context, (state as dynamic).error)
              : previousText;
        }

        return TextField(
          autocorrect: style.autocorrect,
          autofillHints: style.autofillHints,
          autofocus: widget.autofocus,
          buildCounter: style.buildCounter,
          controller: widget.controller,
          cursorColor: style.cursorColor,
          cursorHeight: style.cursorHeight,
          cursorRadius: style.cursorRadius,
          cursorWidth: style.cursorWidth,
          decoration: style.decoration,
          dragStartBehavior: style.dragStartBehavior,
          enableInteractiveSelection: style.enableInteractiveSelection,
          enableSuggestions: style.enableSuggestions,
          enabled: widget.enabled,
          expands: style.expands,
          focusNode: widget.focusNode,
          inputFormatters: style.inputFormatters,
          key: widget.key,
          keyboardAppearance: style.keyboardAppearance,
          keyboardType: style.keyboardType,
          maxLength: style.maxLength,
          maxLengthEnforcement: style.maxLengthEnforcement,
          maxLines: style.maxLines,
          minLines: style.minLines,
          mouseCursor: style.mouseCursor,
          obscureText: style.obscureText,
          obscuringCharacter: style.obscuringCharacter,
          onAppPrivateCommand: widget.onAppPrivateCommand,
          onChanged: widget.onChanged,
          onEditingComplete: widget.onEditingComplete,
          onSubmitted: widget.onSubmitted,
          onTap: widget.onTap,
          readOnly: style.readOnly,
          restorationId: widget.restorationId,
          scrollController: style.scrollController,
          scrollPadding: style.scrollPadding,
          scrollPhysics: style.scrollPhysics,
          selectionControls: style.selectionControls,
          selectionHeightStyle: style.selectionHeightStyle,
          selectionWidthStyle: style.selectionWidthStyle,
          showCursor: style.showCursor,
          smartDashesType: style.smartDashesType,
          smartQuotesType: style.smartQuotesType,
          strutStyle: style.strutStyle,
          style: style.style,
          textAlign: style.textAlign,
          textAlignVertical: style.textAlignVertical,
          textCapitalization: style.textCapitalization,
          textDirection: style.textDirection,
          textInputAction: style.textInputAction,
          toolbarOptions: style.toolbarOptions,
        );
      },
    );
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }
}
