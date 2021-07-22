import 'package:bloc/bloc.dart';
import 'package:commercio_ui/src/core/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class CommercioTextStyle with Diagnosticable {
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;

  const CommercioTextStyle({
    this.style,
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
  });
}

class CommercioText<B extends Bloc<E, T>, E, T, I extends T, D extends T,
    L extends T, ERR extends T> extends StatefulWidget {
  final String Function(BuildContext context) loading;
  final String Function(BuildContext context, D state) text;
  final String Function(BuildContext context, String errorMessage)? error;
  final CommercioTextStyle textStyle;
  final CommercioTextStyle loadingTextStyle;

  const CommercioText({
    Key? key,
    required this.loading,
    required this.text,
    this.error,
    CommercioTextStyle? loadingTextStyle,
    CommercioTextStyle? textStyle,
  })  : loadingTextStyle = loadingTextStyle ?? const CommercioTextStyle(),
        textStyle = textStyle ?? const CommercioTextStyle(),
        super(key: key);

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
    var text = previousText;

    return BlocBuilder<B, T>(
      builder: (context, state) {
        CommercioTextStyle style = widget.textStyle;

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
          style = widget.loadingTextStyle;
        }

        if (TypeHelper.hasType(state.runtimeType, ERR)) {
          // [state] must be dynamic to call the [error] getter on it.
          text = previousText = widget.error != null
              ? widget.error!(context, (state as dynamic).error)
              : previousText;
        }

        return Text(
          text,
          key: widget.key,
          locale: style.locale,
          maxLines: style.maxLines,
          overflow: style.overflow,
          semanticsLabel: style.semanticsLabel,
          softWrap: style.softWrap,
          strutStyle: style.strutStyle,
          style: style.style,
          textAlign: style.textAlign,
          textDirection: style.textDirection,
          textHeightBehavior: style.textHeightBehavior,
          textScaleFactor: style.textScaleFactor,
          textWidthBasis: style.textWidthBasis,
        );
      },
    );
  }
}
