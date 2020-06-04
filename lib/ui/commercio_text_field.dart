import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:commercio_ui/ui/bloc/commercio_state.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommercioTextField<
    B extends Bloc<E, T>,
    E,
    T,
    L extends CommercioLoading,
    S extends CommercioState,
    I extends CommercioState,
    ERR extends CommercioError> extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final InputDecoration decoration;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle style;
  final StrutStyle strutStyle;
  final TextAlign textAlign;
  final TextAlignVertical textAlignVertical;
  final TextDirection textDirection;
  final bool readOnly;
  final ToolbarOptions toolbarOptions;
  final bool showCursor;
  final bool autofocus;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType smartDashesType;
  final SmartQuotesType smartQuotesType;
  final bool enableSuggestions;
  final int maxLines;
  final int minLines;
  final bool expands;
  final int maxLength;
  final bool maxLengthEnforced;
  final ValueChanged<String> onChanged;
  final VoidCallback onEditingComplete;
  final ValueChanged<String> onSubmitted;
  final List<TextInputFormatter> inputFormatters;
  final bool enabled;
  final double cursorWidth;
  final Radius cursorRadius;
  final Color cursorColor;
  final ui.BoxHeightStyle selectionHeightStyle;
  final ui.BoxWidthStyle selectionWidthStyle;
  final Brightness keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;
  final DragStartBehavior dragStartBehavior;
  final GestureTapCallback onTap;
  final InputCounterWidgetBuilder buildCounter;
  final ScrollPhysics scrollPhysics;
  final ScrollController scrollController;
  final String Function(S state) textCallback;
  final String Function() loadingTextCallback;
  final void Function(String errorMessage) errorCallback;
  final TextStyle loadingStyle;

  CommercioTextField({
    Key key,
    TextEditingController controller,
    this.focusNode,
    this.decoration = const InputDecoration(),
    TextInputType keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    ToolbarOptions toolbarOptions,
    this.showCursor,
    this.autofocus = false,
    this.obscureText = false,
    this.autocorrect = true,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforced = true,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorRadius,
    this.cursorColor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection = true,
    this.onTap,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    @required this.textCallback,
    @required this.loadingTextCallback,
    this.errorCallback,
    this.loadingStyle,
  })  : controller = controller ?? TextEditingController(text: ''),
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
                  )),
        smartDashesType = smartDashesType ??
            (obscureText ? SmartDashesType.disabled : SmartDashesType.enabled),
        smartQuotesType = smartQuotesType ??
            (obscureText ? SmartQuotesType.disabled : SmartQuotesType.enabled),
        super(key: key);

  @override
  _CommercioTextFieldState<B, E, T, L, S, I, ERR> createState() =>
      _CommercioTextFieldState<B, E, T, L, S, I, ERR>();
}

class _CommercioTextFieldState<
        B extends Bloc<E, T>,
        E,
        T,
        L extends CommercioLoading,
        S extends CommercioState,
        I extends CommercioState,
        ERR extends CommercioError>
    extends State<CommercioTextField<B, E, T, L, S, I, ERR>> {
  String previousText = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, T>(builder: (context, state) {
      if (state is I) {
        widget.controller.text = '';
      }

      if (state.runtimeType == S) {
        widget.controller.text = previousText = widget.textCallback(state as S);
      }

      if (state.runtimeType == L) {
        widget.controller.text = widget.loadingTextCallback();
      }

      return TextField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        decoration: widget.decoration,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        textCapitalization: widget.textCapitalization,
        style: (state.runtimeType == L) ? widget.loadingStyle : widget.style,
        strutStyle: widget.strutStyle,
        textAlign: widget.textAlign,
        textAlignVertical: widget.textAlignVertical,
        textDirection: widget.textDirection,
        readOnly: widget.readOnly,
        toolbarOptions: widget.toolbarOptions,
        showCursor: widget.showCursor,
        autofocus: widget.autofocus,
        obscureText: widget.obscureText,
        autocorrect: widget.autocorrect,
        smartDashesType: widget.smartDashesType,
        smartQuotesType: widget.smartQuotesType,
        enableSuggestions: widget.enableSuggestions,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        expands: widget.expands,
        maxLength: widget.maxLength,
        maxLengthEnforced: widget.maxLengthEnforced,
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingComplete,
        onSubmitted: widget.onSubmitted,
        inputFormatters: widget.inputFormatters,
        enabled: widget.enabled,
        cursorWidth: widget.cursorWidth,
        cursorRadius: widget.cursorRadius,
        cursorColor: widget.cursorColor,
        selectionHeightStyle: widget.selectionHeightStyle,
        selectionWidthStyle: widget.selectionWidthStyle,
        keyboardAppearance: widget.keyboardAppearance,
        scrollPadding: widget.scrollPadding,
        enableInteractiveSelection: widget.enableInteractiveSelection,
        dragStartBehavior: widget.dragStartBehavior,
        onTap: widget.onTap,
        buildCounter: widget.buildCounter,
        scrollPhysics: widget.scrollPhysics,
        scrollController: widget.scrollController,
      );
    });
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }
}
