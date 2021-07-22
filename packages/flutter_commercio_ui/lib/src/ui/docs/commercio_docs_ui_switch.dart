import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';

/// Represents a list of [SwitchListTile] with every switch that can be used
/// to opt-in or opt-out the [EncryptedData] field before do an encrypted
/// share document action.
class ShareDocumentEncryptedDataSwitchListTiles extends StatelessWidget {
  final Widget Function(MapEntry<CommercioEncryptedData, bool> entry)? title;
  final Widget? subtitle;
  final bool selected;
  final bool autofocus;
  final CommercioSwitchListTileStyle style;

  const ShareDocumentEncryptedDataSwitchListTiles({
    this.title,
    this.subtitle,
    this.selected = false,
    this.autofocus = false,
    CommercioSwitchListTileStyle? style,
    Key? key,
  })  : style = style ?? const CommercioSwitchListTileStyle(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommercioDocsEncDataBloc, CommercioDocsEncDataState>(
        builder: (_, state) {
      if (state is CommercioDocsEncDataStateData ||
          state is CommercioDocsEncDataStateInitial) {
        late final Iterable<MapEntry<CommercioEncryptedData, bool>> entries;

        if (state is CommercioDocsEncDataStateData) {
          entries = state.encryptedData.entries;
        } else if (state is CommercioDocsEncDataStateInitial) {
          entries = state.encryptedData.entries;
        } else {
          entries = [];
        }

        return Column(
            children: entries
                .map(
                  (MapEntry<CommercioEncryptedData, bool> entry) =>
                      SwitchListTile(
                    title: title != null
                        ? title!(entry)
                        : Text(entry.key.toString().split('.')[1]),
                    subtitle: subtitle,
                    selected: selected,
                    value: entry.value,
                    onChanged: (newValue) =>
                        BlocProvider.of<CommercioDocsEncDataBloc>(context)
                            .add(CommercioDocsChangeEncryptedData(
                      encryptedDataKey: entry.key,
                      newValue: newValue,
                    )),
                    activeColor: style.activeColor,
                    activeThumbImage: style.activeThumbImage,
                    activeTrackColor: style.activeTrackColor,
                    autofocus: autofocus,
                    contentPadding: style.contentPadding,
                    controlAffinity: style.controlAffinity,
                    dense: style.dense,
                    inactiveThumbColor: style.inactiveThumbColor,
                    inactiveThumbImage: style.inactiveThumbImage,
                    inactiveTrackColor: style.inactiveTrackColor,
                    isThreeLine: style.isThreeLine,
                    secondary: style.secondary,
                    selectedTileColor: style.selectedTileColor,
                    shape: style.shape,
                    tileColor: style.tileColor,
                  ),
                )
                .toList());
      }

      return Column();
    });
  }
}
