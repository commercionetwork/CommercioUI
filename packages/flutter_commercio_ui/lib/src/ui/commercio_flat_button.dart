import 'package:commercio_ui/src/core/utils/type_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommercioTextButton<B extends Bloc<E, S>, E, S, L extends S,
    ERR extends S> extends StatelessWidget {
  final Clip? clipBehavior;
  final FocusNode? focusNode;
  final bool? autofocus;
  final ButtonStyle? buttonStyle;
  final Widget Function(BuildContext context)? loading;
  final Widget Function(BuildContext context) child;
  final E Function()? event;
  final void Function(BuildContext context, String errorMessage)? error;

  const CommercioTextButton({
    Key? key,
    required this.child,
    this.event,
    this.buttonStyle,
    this.clipBehavior,
    this.autofocus,
    this.error,
    this.loading,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<B, S>(
      listener: (context, state) {
        if (TypeHelper.hasType(state.runtimeType, ERR)) {
          if (error == null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                // [state] must be dynamic to call the [error] getter on it.
                content: Text((state as dynamic).error as String),
                backgroundColor: Colors.red,
              ),
            );
          } else {
            error!(context, (state as dynamic).error as String);
          }
        }
      },
      builder: (context, state) {
        var onPressed = (event != null)
            ? () => BlocProvider.of<B>(context).add(event!())
            : null;
        var childWidget = child(context);

        if (TypeHelper.hasType(state.runtimeType, L)) {
          onPressed = null;

          if (loading != null) {
            childWidget = loading!(context);
          }
        }

        return TextButton(
          onPressed: onPressed,
          onLongPress: null,
          key: key,
          style: buttonStyle,
          clipBehavior: clipBehavior ?? Clip.none,
          focusNode: focusNode,
          autofocus: autofocus ?? false,
          child: childWidget,
        );
      },
    );
  }
}
