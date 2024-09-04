import 'package:device_frame/device_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/screen/phone_screen/phone_home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class CurrentState extends ChangeNotifier {
  DeviceInfo currentDevice = Devices.ios.iPhone13ProMax;
  int colorIndex = 1;

  Widget currentScreen = PhoneHomeScreen();

  void changeSelectedDevice(DeviceInfo device) {
    currentDevice = device;
    notifyListeners();
  }

  void changeGradient(int index){
    colorIndex = index;
    notifyListeners();
  }

  Future<void> launchInBrowser(String link) async{
    Uri url = Uri.parse(link);

    if(await canLaunchUrl(url)){
      await launchUrl(url,mode: LaunchMode.externalApplication);
    }
    else {
      print("Something went wrong");
    }
  }
}
