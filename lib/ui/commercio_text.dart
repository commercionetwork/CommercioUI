import 'dart:ui' as ui show TextHeightBehavior;

import 'package:bloc/bloc.dart';
import 'package:commercio_ui/core/utils/utils.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommercioText<B extends Bloc<E, T>, E, T, I extends T, D extends T,
    L extends T, ERR extends T> extends StatefulWidget {
  final TextStyle style;
  final TextStyle loadingStyle;
  final StrutStyle strutStyle;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final Locale locale;
  final bool softWrap;
  final TextOverflow overflow;
  final double textScaleFactor;
  final int maxLines;
  final String semanticsLabel;
  final TextWidthBasis textWidthBasis;
  final ui.TextHeightBehavior textHeightBehavior;
  final String Function(BuildContext context) loading;
  final String Function(BuildContext context, D state) text;
  final String Function(BuildContext context, String errorMessage) error;

  const CommercioText({
    Key key,
    this.style,
    this.loadingStyle,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    @required this.loading,
    @required this.text,
    this.error,
  }) : super(key: key);

  @override
  _CommercioTextState<B, E, T, I, D, L, ERR> createState() =>
      _CommercioTextState<B, E, T, I, D, L, ERR>();
}

class _CommercioTextState<
    B extends Bloc<E, T>,
    E,
    T,
    I extends T,
    D extends T,
    L extends T,
    ERR extends T> extends State<CommercioText<B, E, T, I, D, L, ERR>> {
  String previousText = '';

  @override
  Widget build(BuildContext context) {
    String text = previousText;

    return BlocBuilder<B, T>(
      builder: (context, state) {
        if (TypeHelper.hasType(state.runtimeType, I)) {
          text = previousText;
        }

        if (TypeHelper.hasType(state.runtimeType, D)) {
          text = previousText = widget.text(context, state as D);
        }

        if (TypeHelper.hasType(state.runtimeType, L)) {
          text = widget.loading(context);
        }

        if (TypeHelper.hasType(state.runtimeType, L)) {
          text = widget.loading(context);
        }

        if (TypeHelper.hasType(state.runtimeType, ERR)) {
          text = previousText = widget.error != null
              ? widget.error(context, state.toString())
              : previousText;
        }

        return Text(
          text,
          style: TypeHelper.hasType(state.runtimeType, L)
              ? widget.loadingStyle
              : widget.style,
          strutStyle: widget.strutStyle,
          textAlign: widget.textAlign,
          textDirection: widget.textDirection,
          locale: widget.locale,
          softWrap: widget.softWrap,
          overflow: widget.overflow,
          textScaleFactor: widget.textScaleFactor,
          maxLines: widget.maxLines,
          semanticsLabel: widget.semanticsLabel,
          textWidthBasis: widget.textWidthBasis,
          textHeightBehavior: widget.textHeightBehavior,
        );
      },
    );
  }
}
