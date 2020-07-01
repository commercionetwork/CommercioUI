import 'dart:ui' as ui show TextHeightBehavior;

import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';

class RequestFaucetInviteText extends CommercioText<
    CommercioKycRequestFaucetInviteBloc,
    CommercioKycRequestFaucetInviteEvent,
    CommercioKycRequestedFaucetInviteState,
    CommercioKycRequestedFaucetInviteStateInitial,
    CommercioKycRequestedFaucetInviteStateData,
    CommercioKycRequestedFaucetInviteStateLoading,
    CommercioKycRequestedFaucetInviteStateError> {
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
        String Function(BuildContext context) loading,
    @required
        String Function(
      BuildContext context,
      CommercioKycRequestedFaucetInviteStateData state,
    )
            text,
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
          text: text,
          loading: loading,
        );
}

class BuyMembershipText extends CommercioText<
    CommercioKycBuyMembershipBloc,
    CommercioKycBuyMembershipEvent,
    CommercioKycBuyMembershipState,
    CommercioKycBuyMembershipStateInitial,
    CommercioKycBuyMembershipStateData,
    CommercioKycBuyMembershipStateLoading,
    CommercioKycBuyMembershipStateError> {
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
        String Function(BuildContext context) loading,
    @required
        String Function(
      BuildContext context,
      CommercioKycBuyMembershipStateData state,
    )
            text,
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
          text: text,
          loading: loading,
        );
}

class InviteMemberText extends CommercioText<
    CommercioKycInviteMemberBloc,
    CommercioKycInviteMemberEvent,
    CommercioKycInviteMemberState,
    CommercioKycInviteMemberStateInitial,
    CommercioKycInviteMemberStateData,
    CommercioKycInviteMemberStateLoading,
    CommercioKycInviteMemberStateError> {
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
        String Function(BuildContext context) loading,
    @required
        String Function(
      BuildContext context,
      CommercioKycInviteMemberStateData state,
    )
            text,
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
          text: text,
          loading: loading,
        );
}
