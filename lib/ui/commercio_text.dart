import 'dart:ui' as ui show TextHeightBehavior;

import 'package:bloc/bloc.dart';
import 'package:commercio_ui/ui/bloc/commercio_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sacco/models/export.dart';

class CommercioTextWidget<
    B extends Bloc<E, T>,
    E,
    T,
    L extends CommercioLoading,
    S extends CommercioState,
    I extends CommercioState> extends StatefulWidget {
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
  final String Function() textWithWalletAndTokens;
  final String Function(List<StdCoin> balance) textWithBalance;
  final String Function(S state) textCallback;
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
    this.textWithWalletAndTokens,
    this.textWithBalance,
    @required this.textCallback,
    @required this.loadingTextCallback,
  }) : super(key: key);

  @override
  _CommercioTextWidgetState<B, E, T, L, S, I> createState() =>
      _CommercioTextWidgetState<B, E, T, L, S, I>();
}

class _CommercioTextWidgetState<
        B extends Bloc<E, T>,
        E,
        T,
        L extends CommercioLoading,
        S extends CommercioState,
        I extends CommercioState>
    extends State<CommercioTextWidget<B, E, T, L, S, I>> {
  String previousText = '';

  @override
  Widget build(BuildContext context) {
    String text = previousText;

    return BlocBuilder<B, T>(builder: (context, state) {
      if (state is I) {
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

      if (state.runtimeType == S) {
        text = previousText = widget.textCallback(state as S);
      }

      if (state.runtimeType == L) {
        text = widget.loadingTextCallback();
      }

      return Text(
        text,
        style: (state.runtimeType == L) ? widget.loadingStyle : widget.style,
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
    });
  }
}
