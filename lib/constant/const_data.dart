import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/models/app_model.dart';
import 'package:portfolio_web/models/color_model.dart';
import 'package:portfolio_web/models/device_model.dart';
import 'package:portfolio_web/screen/phone_screen/about.dart';

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
const String intro = "Welcome to My Portfolio website,\nI'm pursuing a B.E in CSE.\n\nI am proficient in various programming languages and frameworks.\nI am eager to apply my skills to real-world projects and collaborate with cross- functional teams to develop innovative software solutions.";

List<AppModel> apps = [
  AppModel(title: 'About Me', color: Colors.white, icon: Icons.person, screen: AboutMeScreen()),
  AppModel(title: 'Skills', color: Colors.white, icon: Icons.ac_unit_outlined),
  AppModel(title: 'Github', color: Colors.white, icon: Icons.ac_unit_outlined, link: github),
  AppModel(title: 'LinkedIn', color: Colors.white, icon: Icons.ac_unit_outlined, link: linkedIn),
  AppModel(title: 'Resume', color: Colors.white, icon: Icons.ac_unit_outlined, link: resume),
  AppModel(title: 'LeetCode', color: Colors.white, icon: Icons.ac_unit_outlined, link: leetcode),
  AppModel(title: 'Email', color: Colors.white, icon: Icons.ac_unit_outlined),
  AppModel(title: 'Experiance', color: Colors.white, icon: Icons.ac_unit_outlined),
  AppModel(title: 'Carmania', color: Colors.white, icon: Icons.ac_unit_outlined),
  AppModel(title: 'TO-DO', color: Colors.white, icon: Icons.ac_unit_outlined),
];


final List<Color> ballsColors = [
  Colors.lightGreenAccent,
  Colors.lightBlue,
  Colors.deepPurple,
  Colors.purple,
  Colors.green,
  Colors.indigo,
  Colors.red
];