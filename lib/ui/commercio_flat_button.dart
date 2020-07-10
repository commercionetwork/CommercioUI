import 'package:commercio_ui/core/utils/type_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommercioFlatButton<B extends Bloc<E, S>, E, S, L extends S,
    ERR extends S> extends StatelessWidget {
  final ValueChanged<bool> onHighlightChanged;
  final ButtonTextTheme textTheme;
  final Color textColor;
  final Color disabledTextColor;
  final Color color;
  final Color disabledColor;
  final Color focusColor;
  final Color hoverColor;
  final Color highlightColor;
  final Color splashColor;
  final Brightness colorBrightness;
  final EdgeInsetsGeometry padding;
  final VisualDensity visualDensity;
  final ShapeBorder shape;
  final Clip clipBehavior;
  final FocusNode focusNode;
  final bool autofocus;
  final MaterialTapTargetSize materialTapTargetSize;
  final Widget Function(BuildContext context) loading;
  final Widget Function(BuildContext context) child;
  final E Function() event;
  final void Function(BuildContext context, String errorMessage) error;

  const CommercioFlatButton({
    Key key,
    this.onHighlightChanged,
    this.textTheme,
    this.textColor,
    this.disabledTextColor,
    this.color,
    this.disabledColor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.colorBrightness,
    this.padding,
    this.visualDensity,
    this.shape,
    this.clipBehavior,
    this.focusNode,
    this.autofocus,
    this.materialTapTargetSize,
    @required this.child,
    @required this.event,
    this.error,
    this.loading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<B, S>(
      listener: (context, state) {
        if (TypeHelper.hasType(state.runtimeType, ERR)) {
          if (error == null) {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                // [state] must be dynamic to call the [error] getter on it.
                content: Text((state as dynamic).error as String),
                backgroundColor: Colors.red,
              ),
            );
          } else {
            error(context, state.toString());
          }
        }
      },
      builder: (context, state) {
        void Function() onPressed = (event != null)
            ? () => BlocProvider.of<B>(context).add(event())
            : null;
        Widget childWidget = child(context);

        if (TypeHelper.hasType(state.runtimeType, L)) {
          onPressed = null;

          if (loading != null) {
            childWidget = loading(context);
          }
        }

        return FlatButton(
          onPressed: onPressed,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior ?? Clip.none,
          focusNode: focusNode,
          autofocus: autofocus ?? false,
          materialTapTargetSize: materialTapTargetSize,
          child: childWidget,
        );
      },
    );
  }
}
