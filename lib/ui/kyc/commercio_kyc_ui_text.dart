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
    String Function(BuildContext context, String errorMessage) error,
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
          error: error,
        );
}

class DeriveBuyMembershipText extends CommercioText<
    CommercioKycDeriveBuyMembershipBloc,
    CommercioKycDeriveBuyMembershipEvent,
    CommercioKycDeriveBuyMembershipState,
    CommercioKycDeriveBuyMembershipStateInitial,
    CommercioKycDeriveBuyMembershipStateData,
    CommercioKycDeriveBuyMembershipStateLoading,
    CommercioKycDeriveBuyMembershipStateError> {
  const DeriveBuyMembershipText({
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
      CommercioKycDeriveBuyMembershipStateData state,
    )
            text,
    String Function(BuildContext context, String errorMessage) error,
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
          error: error,
        );
}

class BuyMembershipsText extends CommercioText<
    CommercioKycBuyMembershipsBloc,
    CommercioKycBuyMembershipsEvent,
    CommercioKycBuyMembershipsState,
    CommercioKycBuyMembershipsStateInitial,
    CommercioKycBuyMembershipsStateData,
    CommercioKycBuyMembershipsStateLoading,
    CommercioKycBuyMembershipsStateError> {
  const BuyMembershipsText({
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
      CommercioKycBuyMembershipsStateData state,
    )
            text,
    String Function(BuildContext context, String errorMessage) error,
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
          error: error,
        );
}

class DeriveInviteMemberText extends CommercioText<
    CommercioKycDeriveInviteMemberBloc,
    CommercioKycDeriveInviteMemberEvent,
    CommercioKycDeriveInviteMemberState,
    CommercioKycDeriveInviteMemberStateInitial,
    CommercioKycDeriveInviteMemberStateData,
    CommercioKycDeriveInviteMemberStateLoading,
    CommercioKycDeriveInviteMemberStateError> {
  const DeriveInviteMemberText({
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
      CommercioKycDeriveInviteMemberStateData state,
    )
            text,
    String Function(BuildContext context, String errorMessage) error,
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
          error: error,
        );
}

class InviteMembersText extends CommercioText<
    CommercioKycInviteMembersBloc,
    CommercioKycInviteMembersEvent,
    CommercioKycInviteMembersState,
    CommercioKycInviteMembersStateInitial,
    CommercioKycInviteMembersStateData,
    CommercioKycInviteMembersStateLoading,
    CommercioKycInviteMembersStateError> {
  const InviteMembersText({
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
      CommercioKycInviteMembersStateData state,
    )
            text,
    String Function(BuildContext context, String errorMessage) error,
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
          error: error,
        );
}
