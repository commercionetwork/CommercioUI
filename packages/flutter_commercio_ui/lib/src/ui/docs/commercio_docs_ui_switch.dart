import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

/// Represents a list of [SwitchListTile] with every switch that can be used
/// to opt-in or opt-out the [EncryptedData] field before do an encrypted
/// share document action.
class ShareDocumentEncryptedDataSwitchListTiles extends StatelessWidget {
  final Color activeColor;
  final Color activeTrackColor;
  final Color inactiveThumbColor;
  final Color inactiveTrackColor;
  final ImageProvider activeThumbImage;
  final ImageProvider inactiveThumbImage;
  final Widget Function(MapEntry<EncryptedData, bool> entry) title;
  final Widget subtitle;
  final Widget secondary;
  final bool isThreeLine;
  final bool dense;
  final EdgeInsetsGeometry contentPadding;
  final bool selected;

  const ShareDocumentEncryptedDataSwitchListTiles({
    Key key,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.inactiveThumbImage,
    this.title,
    this.subtitle,
    this.isThreeLine = false,
    this.dense,
    this.contentPadding,
    this.secondary,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommercioDocsEncDataBloc, CommercioDocsEncDataState>(
        builder: (_, state) {
      if (state is CommercioDocsEncDataStateData ||
          state is CommercioDocsEncDataStateInitial) {
        Iterable<MapEntry<EncryptedData, bool>> entries;

        if (state is CommercioDocsEncDataStateData) {
          entries = state.encryptedData.entries;
        }

        if (state is CommercioDocsEncDataStateInitial) {
          entries = state.encryptedData.entries;
        }

        return Column(
            children: entries
                .map(
                  (MapEntry<EncryptedData, bool> entry) => SwitchListTile(
                    activeColor: activeColor,
                    activeTrackColor: activeTrackColor,
                    inactiveThumbColor: inactiveThumbColor,
                    activeThumbImage: activeThumbImage,
                    inactiveThumbImage: inactiveThumbImage,
                    title: title != null
                        ? title(entry)
                        : Text(entry.key.toString().split('.')[1]),
                    subtitle: subtitle,
                    isThreeLine: isThreeLine,
                    dense: dense,
                    contentPadding: contentPadding,
                    secondary: secondary,
                    selected: selected,
                    value: entry.value,
                    onChanged: (newValue) =>
                        BlocProvider.of<CommercioDocsEncDataBloc>(context)
                            .add(CommercioDocsChangeEncryptedData(
                      encryptedDataKey: entry.key,
                      newValue: newValue,
                    )),
                  ),
                )
                .toList());
      }

      return null;
    });
  }
}
