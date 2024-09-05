import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/provider/current_state.dart';
import 'package:portfolio_web/screen/phone_screen/phone_home_screen.dart';
import 'package:provider/provider.dart';

class ScreenWrapper extends StatelessWidget {
  final Widget childW;
  const ScreenWrapper({super.key, required this.childW});

  @override
  Widget build(BuildContext context) {
    CurrentState instance = Provider.of<CurrentState>(context, listen: false);
    return Column(
      children: [
        Consumer<CurrentState>(builder: (context, _, __) {
          if(instance.isMainScreen==false) {
            return Container(
              decoration:const BoxDecoration(
                color: Colors.white
              ),
              width: double.infinity,
              padding:const EdgeInsets.only(top: 30, left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(instance.title ?? '', style: GoogleFonts.openSans(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                  IconButton(
                    onPressed: () {
                      instance.changeScreen(const PhoneHomeScreen(),true);
                    },
                    icon:const Icon(Icons.close),
                  )
                ],
              ),
            );
          }
          else{
            return Container();
          }
        }),
        Expanded(child: childW),
      ],
    );
  }
}
