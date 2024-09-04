import 'package:flutter/cupertino.dart';

class appModel {
  String title;
  String? assetPath;
  IconData? icon;
  Color color;
  Widget? widget;
  String? link;

  appModel({
    required this.title,
    this.assetPath,
    this.icon,
    required this.color,
    this.widget,
    this.link,
  }) : assert(icon == null || assetPath == null);
}
