import 'dart:ui' as ui show TextHeightBehavior;

import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';

class RequestFaucetInviteText extends CommercioTextWidget<
    CommercioMembershipBloc,
    CommercioMembershipEvent,
    CommercioMembershipState,
    CommercioMembershipRequestFaucetInviteLoading,
    CommercioMembershipRequestedFaucetInvite,
    CommercioMembershipInitial> {
  const RequestFaucetInviteText({
    Key key,
    TextStyle style,
    TextStyle loadingStyle,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
    ui.TextHeightBehavior textHeightBehavior,
    @required
        String Function(CommercioMembershipRequestedFaucetInvite state)
            textCallback,
    @required String Function() loadingTextCallback,
  }) : super(
          key: key,
          style: style,
          loadingStyle: loadingStyle,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          textCallback: textCallback,
          loadingTextCallback: loadingTextCallback,
        );
}

class BuyMembershipText extends CommercioTextWidget<
    CommercioMembershipBloc,
    CommercioMembershipEvent,
    CommercioMembershipState,
    CommercioMembershipBuyMembershipLoading,
    CommercioMembershipBuyMembership,
    CommercioMembershipInitial> {
  const BuyMembershipText({
    Key key,
    TextStyle style,
    TextStyle loadingStyle,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
    ui.TextHeightBehavior textHeightBehavior,
    @required
        String Function(CommercioMembershipBuyMembership state) textCallback,
    @required String Function() loadingTextCallback,
  }) : super(
          key: key,
          style: style,
          loadingStyle: loadingStyle,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          textCallback: textCallback,
          loadingTextCallback: loadingTextCallback,
        );
}

class InviteMemberText extends CommercioTextWidget<
    CommercioMembershipBloc,
    CommercioMembershipEvent,
    CommercioMembershipState,
    CommercioMembershipInviteMemberLoading,
    CommercioMembershipInviteMember,
    CommercioMembershipInitial> {
  const InviteMemberText({
    Key key,
    TextStyle style,
    TextStyle loadingStyle,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
    ui.TextHeightBehavior textHeightBehavior,
    @required
        String Function(CommercioMembershipInviteMember state) textCallback,
    @required String Function() loadingTextCallback,
  }) : super(
          key: key,
          style: style,
          loadingStyle: loadingStyle,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          textCallback: textCallback,
          loadingTextCallback: loadingTextCallback,
        );
}
