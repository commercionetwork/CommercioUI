import 'package:commercio_ui/ui/bloc/commercio_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventFlatButton<B extends Bloc<E, S>, E, S, L extends CommercioLoading,
    ERR extends CommercioError> extends StatelessWidget {
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
  final Widget Function() loadingChild;
  final Widget Function() child;
  final E Function() accountEventCallback;
  final void Function(String errorMessage) errorCallback;

  const EventFlatButton({
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
    @required this.loadingChild,
    @required this.child,
    @required this.accountEventCallback,
    this.errorCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      builder: (context, state) {
        if (state.runtimeType == ERR) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (errorCallback == null) {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text((state as ERR).message),
                backgroundColor: Colors.red,
              ));
            } else {
              errorCallback((state as ERR).message);
            }
          });
        }

        if (state.runtimeType == L) {
          return FlatButton(
              onPressed: null,
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
              child: loadingChild());
        }

        return FlatButton(
            onPressed: () =>
                BlocProvider.of<B>(context).add(accountEventCallback()),
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
            child: child());
      },
    );
  }
}