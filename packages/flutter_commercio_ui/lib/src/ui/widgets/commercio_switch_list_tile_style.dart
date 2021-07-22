import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class CommercioSwitchListTileStyle with Diagnosticable {
  final Color? tileColor;
  final Color? activeColor;
  final Color? activeTrackColor;
  final Color? inactiveThumbColor;
  final Color? inactiveTrackColor;
  final ImageProvider? activeThumbImage;
  final ImageProvider? inactiveThumbImage;
  final Widget? secondary;
  final bool isThreeLine;
  final bool? dense;
  final EdgeInsetsGeometry? contentPadding;
  final ListTileControlAffinity controlAffinity;
  final ShapeBorder? shape;
  final Color? selectedTileColor;

  const CommercioSwitchListTileStyle({
    this.tileColor,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.inactiveThumbImage,
    this.isThreeLine = false,
    this.dense,
    this.contentPadding,
    this.secondary,
    this.controlAffinity = ListTileControlAffinity.platform,
    this.shape,
    this.selectedTileColor,
  });
}
