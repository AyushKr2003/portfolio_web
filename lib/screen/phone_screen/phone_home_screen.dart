import 'package:flutter/material.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
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
                              else if(apps[index].title.toLowerCase() == "email"){
                                _showEmailDialog(context);
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
                                style: GoogleFonts.openSans(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
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
  void _showEmailDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:const Center(child: Text('Email ID')),
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  email,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                IconButton(
                  onPressed: () {
                    Clipboard.setData(const ClipboardData(text: email)).then(
                          (_) {
                        Navigator.pop(context);
                      },
                    );
                  },
                  icon:const Icon(Icons.copy_rounded, color: Colors.lightBlueAccent,),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
