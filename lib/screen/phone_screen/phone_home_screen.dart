import 'package:flutter/material.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:portfolio_web/constant/const_data.dart';
import 'package:portfolio_web/provider/current_state.dart';
import 'package:provider/provider.dart';

class PhoneHomeScreen extends StatelessWidget {
  const PhoneHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    return Consumer<CurrentState>(
      builder: (context,_,__) {
        return Container(
          padding: const EdgeInsets.only(
            top: 70,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.start,
                children: [
                  ...List.generate(
                    apps.length,
                    (index) => Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                        bottom: 20,
                        left: 10,
                        right: 10,
                      ),
                      child: Column(
                        children: [
                          CustomButton(
                            onPressed: () {
                              //launch function
                              if(apps[index].link != null) {
                                currentState.launchInBrowser(apps[index].link!);
                              }
                              else if(apps[index].screen != null){
                                currentState.changeScreen(apps[index].screen!, false,titleL: apps[index].title);
                              }
                            },
                            margin: const EdgeInsets.only(bottom: 5),
                            width: 55,
                            height: 55,
                            borderRadius: currentState.currentDevice ==
                                    Devices.android.samsungGalaxyS20
                                ? 100
                                : 8,
                            backgroundColor: apps[index].color,
                            child: Icon(
                              apps[index].icon,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            child: Center(
                              child: Text(
                                apps[index].title,
                                style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}
