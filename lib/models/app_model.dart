import 'package:flutter/cupertino.dart';

class appModel {
  String title;
  String? assetPath;
  IconData? icon;
  Color color;
  Widget? screen;
  String? link;

  appModel({
    required this.title,
    this.assetPath,
    this.icon,
    required this.color,
    this.screen,
    this.link,
  }) : assert(icon == null || assetPath == null);
}
