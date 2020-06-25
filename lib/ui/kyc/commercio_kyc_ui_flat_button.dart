import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';

class RequestFaucetInviteFlatButton extends EventFlatButton<
    CommercioKycRequestFaucetInviteBloc,
    CommercioKycRequestFaucetInviteEvent,
    CommercioKycRequestedFaucetInviteState,
    CommercioKycRequestedFaucetInviteStateLoading,
    CommercioKycRequestedFaucetInviteStateError> {
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
        CommercioKycRequestFaucetInviteEvent Function() accountEventCallback,
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
    CommercioKycBuyMembershipBloc,
    CommercioKycBuyMembershipEvent,
    CommercioKycBuyMembershipState,
    CommercioKycBuyMembershipStateLoading,
    CommercioKycBuyMembershipStateError> {
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
    @required CommercioKycBuyMembershipEvent Function() accountEventCallback,
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
    CommercioKycInviteMemberBloc,
    CommercioKycInviteMemberEvent,
    CommercioKycInviteMemberState,
    CommercioKycInviteMemberStateLoading,
    CommercioKycInviteMemberStateError> {
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
    @required CommercioKycInviteMemberEvent Function() accountEventCallback,
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