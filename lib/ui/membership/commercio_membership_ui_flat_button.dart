import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';

class RequestFaucetInviteFlatButton extends EventFlatButton<
    CommercioMembershipBloc,
    CommercioMembershipEvent,
    CommercioMembershipState,
    CommercioMembershipRequestFaucetInviteLoading,
    CommercioMembershipRequestFaucetInviteError> {
  RequestFaucetInviteFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    Widget Function() loadingChild,
    Widget Function() child,
    void Function(String errorMessage) errorCallback,
    @required
        CommercioMembershipRequestFaucetInviteEvent Function()
            accountEventCallback,
    String faucetDomain,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
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
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          loadingChild: loadingChild,
          child: child,
          accountEventCallback: accountEventCallback,
          errorCallback: errorCallback,
        );
}

class BuyMembershipFlatButton extends EventFlatButton<
    CommercioMembershipBloc,
    CommercioMembershipEvent,
    CommercioMembershipState,
    CommercioMembershipBuyMembershipLoading,
    CommercioMembershipBuyMembershipError> {
  BuyMembershipFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    Widget Function() loadingChild,
    Widget Function() child,
    void Function(String errorMessage) errorCallback,
    @required
        CommercioMembershipBuyMembershipEvent Function() accountEventCallback,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
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
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          loadingChild: loadingChild,
          child: child,
          accountEventCallback: accountEventCallback,
          errorCallback: errorCallback,
        );
}

class InviteMemberFlatButton extends EventFlatButton<
    CommercioMembershipBloc,
    CommercioMembershipEvent,
    CommercioMembershipState,
    CommercioMembershipInviteMemberLoading,
    CommercioMembershipInviteMemberError> {
  InviteMemberFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    Widget Function() loadingChild,
    Widget Function() child,
    void Function(String errorMessage) errorCallback,
    @required
        CommercioMembershipInviteMemberEvent Function() accountEventCallback,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
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
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          loadingChild: loadingChild,
          child: child,
          accountEventCallback: accountEventCallback,
          errorCallback: errorCallback,
        );
}
