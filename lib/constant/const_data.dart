import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/models/app_model.dart';
import 'package:portfolio_web/models/color_model.dart';
import 'package:portfolio_web/models/device_model.dart';

List<DeviceModel> devices = [
  DeviceModel(device: Devices.android.samsungGalaxyS20, icon: Icons.android),
  DeviceModel(device: Devices.ios.iPhone13, icon: Icons.apple),
  DeviceModel(device: Devices.ios.iPad12InchesGen4, icon: Icons.tablet),
];

List<ColorModel> colors = [
  ColorModel(
    svgPath: 'assets/backgroundImg/backGreen2.svg',
    gradient: LinearGradient(
      colors: [Colors.yellowAccent.withOpacity(0.3), Colors.greenAccent],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    color: Colors.lightGreenAccent,
  ),
  ColorModel(
    svgPath: 'assets/backgroundImg/backBlue.svg',
    gradient:const LinearGradient(
      colors: [Colors.blueAccent, Colors.black45],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    color: Colors.lightBlue,
  ),
  ColorModel(
    svgPath: 'assets/backgroundImg/backPurple.svg',
    gradient: LinearGradient(
      colors: [Colors.deepPurpleAccent, Colors.purple.withOpacity(0.6)],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    color: Colors.deepPurple,
  ),
  ColorModel(
    svgPath: 'assets/backgroundImg/backPurple.svg',
    gradient: LinearGradient(
      colors: [Colors.purple, Colors.pink.withOpacity(0.5)],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    color: Colors.purple,
  ),
  ColorModel(
    svgPath: 'assets/backgroundImg/backGreen2.svg',
    gradient:const LinearGradient(
      colors: [Colors.yellowAccent, Colors.green],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    color: Colors.green,
  ),
  ColorModel(
    svgPath: 'assets/backgroundImg/backBlue.svg',
    gradient:const LinearGradient(
      colors: [Colors.lightBlueAccent, Colors.indigoAccent],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    color: Colors.indigo,
  ),
];

const String github = 'https://github.com/AyushKr2003';
const String linkedIn = 'https://www.linkedin.com/in/ayush-kumar-singh-8b6b00249/';
const String resume = 'https://drive.google.com/file/d/1B9vQrY2dNDWVi7lAdSCVI7mkcIY33AVM/view?usp=sharing';
const String leetcode = 'https://leetcode.com/u/ayushkrsngh2003/';
const String email = 'ayushkrsngh2003@gmail.com';


List<appModel> apps = [
  appModel(title: 'About Me', color: Colors.white, icon: Icons.person),
  appModel(title: 'Skills', color: Colors.white, icon: Icons.ac_unit_outlined),
  appModel(title: 'Github', color: Colors.white, icon: Icons.ac_unit_outlined, link: github),
  appModel(title: 'LinkedIn', color: Colors.white, icon: Icons.ac_unit_outlined, link: linkedIn),
  appModel(title: 'Resume', color: Colors.white, icon: Icons.ac_unit_outlined, link: resume),
  appModel(title: 'LeetCode', color: Colors.white, icon: Icons.ac_unit_outlined, link: leetcode),
  appModel(title: 'Email', color: Colors.white, icon: Icons.ac_unit_outlined),
  appModel(title: 'Experiance', color: Colors.white, icon: Icons.ac_unit_outlined),
  appModel(title: 'Carmania', color: Colors.white, icon: Icons.ac_unit_outlined),
  appModel(title: 'TO-Do', color: Colors.white, icon: Icons.ac_unit_outlined),
];