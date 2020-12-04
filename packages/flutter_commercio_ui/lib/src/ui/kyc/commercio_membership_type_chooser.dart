import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

/// Displays a [ListView] with a [RadioListTile] for every [MembershipType].
///
/// An optional [title] can be used to choose how to display the [Radio] text.
class CommercioMembershipTypeChooser extends StatelessWidget {
  final Widget Function(MembershipType) title;
  final Axis scrollDirection;
  final bool reverse;
  final ScrollController controller;
  final bool primary;
  final ScrollPhysics physics;
  final bool shrinkWrap;
  final EdgeInsetsGeometry padding;
  final double itemExtent;
  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final double cacheExtent;
  final int semanticChildCount;
  final DragStartBehavior dragStartBehavior;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  // Only avaiable on dev
  //final bool Function(MembershipType) radioToggleable;
  final Color Function(MembershipType) radioActiveColor;
  final Widget Function(MembershipType) subtitle;
  final bool Function(MembershipType) radioIsThreeLine;
  final bool Function(MembershipType) radioDense;
  final Widget Function(MembershipType) radioSecondary;
  final bool Function(MembershipType) radioSelected;
  final ListTileControlAffinity Function(MembershipType) radioControlAffinity;
  // Only avaiable on dev
  //final bool Function(MembershipType) radioAutofocus;

  static const _defaultScrollDirection = Axis.vertical;
  static const _defaultReverse = false;
  static const _defaultShrinkWrap = false;
  static const _defaultAddAutomaticKeepAlives = true;
  static const _defaultAddRepaintBoundaries = true;
  static const _defaultAddSemanticIndexes = true;
  static const _defaultDragStartBehavior = DragStartBehavior.start;
  static const _defaultKeyboardDismissBehavior =
      ScrollViewKeyboardDismissBehavior.manual;
  //static const _defaultRadioToggleable = false;
  static const _defaultRadioIsThreeLine = false;
  static const _defaultRadioSelected = false;
  static const _defaultRadioControlAffinity = ListTileControlAffinity.platform;
  //static const _defaultRadioAutofocus = false;

  const CommercioMembershipTypeChooser({
    Key key,
    this.title,
    Axis scrollDirection,
    bool reverse,
    this.controller,
    this.primary,
    this.physics,
    bool shrinkWrap,
    this.padding,
    this.itemExtent,
    bool addAutomaticKeepAlives,
    bool addRepaintBoundaries,
    bool addSemanticIndexes,
    this.cacheExtent,
    this.semanticChildCount,
    DragStartBehavior dragStartBehavior,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
    //this.radioToggleable,
    this.radioActiveColor,
    this.subtitle,
    this.radioIsThreeLine,
    this.radioDense,
    this.radioSecondary,
    this.radioSelected,
    this.radioControlAffinity,
    //this.radioAutofocus,
  })  : scrollDirection = scrollDirection ?? _defaultScrollDirection,
        reverse = reverse ?? _defaultReverse,
        shrinkWrap = shrinkWrap ?? _defaultShrinkWrap,
        addAutomaticKeepAlives =
            addAutomaticKeepAlives ?? _defaultAddAutomaticKeepAlives,
        addRepaintBoundaries =
            addRepaintBoundaries ?? _defaultAddRepaintBoundaries,
        addSemanticIndexes = addSemanticIndexes ?? _defaultAddSemanticIndexes,
        dragStartBehavior = dragStartBehavior ?? _defaultDragStartBehavior,
        keyboardDismissBehavior =
            keyboardDismissBehavior ?? _defaultKeyboardDismissBehavior,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      keyboardDismissBehavior: keyboardDismissBehavior,
      padding: padding,
      physics: physics,
      primary: primary,
      reverse: reverse,
      scrollDirection: scrollDirection,
      semanticChildCount: semanticChildCount,
      shrinkWrap: shrinkWrap,
      children: MembershipType.values.map((membershipType) {
        return BlocBuilder<CommercioKycMembershipTypeChooserBloc,
            CommercioKycChangeMembershipState>(
          builder: (context, state) {
            return RadioListTile<MembershipType>(
              title: title != null
                  ? title(membershipType)
                  : Text(membershipType.value.toUpperCase()),
              subtitle: subtitle != null ? subtitle(membershipType) : null,
              value: membershipType,
              groupValue: context
                  .read<CommercioKycMembershipTypeChooserBloc>()
                  .membershipType,
              onChanged: (newValue) =>
                  context.read<CommercioKycMembershipTypeChooserBloc>().add(
                        CommercioKycChangeMembershipTypeEvent(
                          membershipType: newValue,
                        ),
                      ),
              activeColor: radioActiveColor != null
                  ? radioActiveColor(membershipType)
                  : null,
              /*toggleable: radioToggleable != null
                  ? radioToggleable(membershipType)
                  : _defaultRadioToggleable,*/
              isThreeLine: radioIsThreeLine != null
                  ? radioIsThreeLine(membershipType)
                  : _defaultRadioIsThreeLine,
              dense: radioDense != null ? radioDense(membershipType) : null,
              secondary: radioSecondary != null
                  ? radioSecondary(membershipType)
                  : null,
              selected: radioSelected != null
                  ? radioSelected(membershipType)
                  : _defaultRadioSelected,
              controlAffinity: radioControlAffinity != null
                  ? radioControlAffinity(membershipType)
                  : _defaultRadioControlAffinity,
              /*autofocus: radioAutofocus != null
                  ? radioAutofocus(membershipType)
                  : _defaultRadioAutofocus,*/
            );
          },
        );
      }).toList(),
    );
  }
}
