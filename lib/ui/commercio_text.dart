import 'dart:ui' as ui show TextHeightBehavior;

import 'package:bloc/bloc.dart';
import 'package:commercio_ui/core/utils/export.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommercioTextWidget<B extends Bloc<E, T>, E, T, I extends T, D extends T,
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
  final String Function(D state) textCallback;
  final String Function() loadingTextCallback;

  const CommercioTextWidget({
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
    @required this.textCallback,
    @required this.loadingTextCallback,
  }) : super(key: key);

  @override
  _CommercioTextWidgetState<B, E, T, I, D, L, ERR> createState() =>
      _CommercioTextWidgetState<B, E, T, I, D, L, ERR>();
}

class _CommercioTextWidgetState<
    B extends Bloc<E, T>,
    E,
    T,
    I extends T,
    D extends T,
    L extends T,
    ERR extends T> extends State<CommercioTextWidget<B, E, T, I, D, L, ERR>> {
  String previousText = '';

  @override
  Widget build(BuildContext context) {
    String text = previousText;

    return BlocBuilder<B, T>(
      builder: (context, state) {
        if (TypeHelper.freezedEquals(state, I)) {
          return Text(
            text,
            style: widget.style,
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
        }

        if (TypeHelper.freezedEquals(state, D)) {
          text = previousText = widget.textCallback(state as D);
        }

        if (TypeHelper.freezedEquals(state, L)) {
          text = widget.loadingTextCallback();
        }

        return Text(
          text,
          style: TypeHelper.freezedEquals(state, L)
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
