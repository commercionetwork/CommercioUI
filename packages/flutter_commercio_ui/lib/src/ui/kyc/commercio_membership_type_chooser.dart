import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

/// Displays a [ListView] with a [RadioListTile] for every [MembershipType].
///
/// An optional [title] can be used to choose how to display the [Radio] text.
class CommercioMembershipTypeChooser extends StatelessWidget {
  final Widget Function(MembershipType)? title;
  final CommercioListViewStyle listViewStyle;
  final CommercioRadioListTileStyle radioListTileStyle;
  final Widget Function(MembershipType)? subtitle;
  final String? restorationId;

  const CommercioMembershipTypeChooser({
    this.title,
    this.subtitle,
    CommercioListViewStyle? listViewStyle,
    CommercioRadioListTileStyle? radioListTileStyle,
    this.restorationId,
    Key? key,
  })  : listViewStyle = listViewStyle ?? const CommercioListViewStyle(),
        radioListTileStyle =
            radioListTileStyle ?? const CommercioRadioListTileStyle(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      addAutomaticKeepAlives: listViewStyle.addAutomaticKeepAlives,
      addRepaintBoundaries: listViewStyle.addRepaintBoundaries,
      addSemanticIndexes: listViewStyle.addSemanticIndexes,
      cacheExtent: listViewStyle.cacheExtent,
      clipBehavior: listViewStyle.clipBehavior,
      controller: listViewStyle.controller,
      dragStartBehavior: listViewStyle.dragStartBehavior,
      itemExtent: listViewStyle.itemExtent,
      keyboardDismissBehavior: listViewStyle.keyboardDismissBehavior,
      padding: listViewStyle.padding,
      physics: listViewStyle.physics,
      primary: listViewStyle.primary,
      restorationId: restorationId,
      reverse: listViewStyle.reverse,
      scrollDirection: listViewStyle.scrollDirection,
      semanticChildCount: listViewStyle.semanticChildCount,
      shrinkWrap: listViewStyle.shrinkWrap,
      children: MembershipType.values.map((membershipType) {
        return BlocBuilder<CommercioKycMembershipTypeChooserBloc,
            CommercioKycChangeMembershipState>(
          builder: (context, state) {
            return RadioListTile<MembershipType>(
              title: title != null
                  ? title!(membershipType)
                  : Text(membershipType.value.toUpperCase()),
              subtitle: subtitle != null ? subtitle!(membershipType) : null,
              value: membershipType,
              groupValue: context
                  .watch<CommercioKycMembershipTypeChooserBloc>()
                  .membershipType,
              onChanged: (newValue) {
                context.read<CommercioKycMembershipTypeChooserBloc>().add(
                      CommercioKycChangeMembershipTypeEvent(
                        membershipType: newValue!,
                      ),
                    );
              },
              activeColor: radioListTileStyle.activeColor,
              autofocus: radioListTileStyle.autofocus,
              contentPadding: radioListTileStyle.contentPadding,
              controlAffinity: radioListTileStyle.controlAffinity,
              dense: radioListTileStyle.dense,
              isThreeLine: radioListTileStyle.isThreeLine,
              secondary: radioListTileStyle.secondary,
              selected: radioListTileStyle.selected,
              selectedTileColor: radioListTileStyle.selectedTileColor,
              shape: radioListTileStyle.shape,
              tileColor: radioListTileStyle.tileColor,
              toggleable: radioListTileStyle.toggleable,
            );
          },
        );
      }).toList(),
    );
  }
}
