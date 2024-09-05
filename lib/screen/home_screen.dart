import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_web/constant/const_data.dart';
import 'package:portfolio_web/provider/current_state.dart';
import 'package:portfolio_web/screen/phone_screen/phone_screen_wrapper.dart';
import 'package:portfolio_web/widget/balls.dart';
import 'package:portfolio_web/widget/frosted_container.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    return Scaffold(
      body: Stack(
        children: [
          Consumer<CurrentState>(builder: (context, _, __) {
            return Container(
              decoration: BoxDecoration(
                gradient: colors[currentState.colorIndex].gradient,
              ),
            );
          }),
          size.width > 300 ? _coloredBallPosition(200, 2, ballsColors[0]): const SizedBox.shrink(),
          size.width > 500 ? _coloredBallPosition(400, 4, ballsColors[1]) : const SizedBox.shrink(),
          size.width > 700 ? _coloredBallPosition(600, 3, ballsColors[2]) : const SizedBox.shrink(),
          size.width > 900 ? _coloredBallPosition(800, 2, ballsColors[3]) : const SizedBox.shrink(),
          size.width > 1100 ? _coloredBallPosition(1000, 4, ballsColors[4]) : const SizedBox.shrink(),
          size.width > 1300 ? _coloredBallPosition(1200, 3, ballsColors[5]) : const SizedBox.shrink(),
          size.width > 1500 ? _coloredBallPosition(1400, 2, ballsColors[6]) : const SizedBox.shrink(),
          Consumer<CurrentState>(builder: (context, _, __) {
            return SvgPicture.asset(
              colors[currentState.colorIndex].svgPath,
              height: size.height,
              fit: BoxFit.cover,
            );
          }),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Left Frosted containers
                  size.width > 700 ?
                  Column(
                    children: [
                      FronstedContainer(
                        height: size.height * 0.45,
                        width: size.width * 0.16,
                      ),
                      const SizedBox(height: 20),
                      FronstedContainer(
                        height: size.height * 0.25,
                        width: size.width * 0.16,
                      ),
                    ],
                  )
                      : const SizedBox.shrink(),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: size.height - 100,
                    child: Consumer<CurrentState>(builder: (context, _, __) {
                      return DeviceFrame(
                        device: currentState.currentDevice,
                        screen: Container(
                          decoration: BoxDecoration(
                            gradient: colors[currentState.colorIndex].gradient
                          ),
                          child: ScreenWrapper(childW: currentState.currentScreen),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(width: 10),
                  //Right frosted container
                  size.width > 700 ?
                  Column(
                    children: [
                      FronstedContainer(
                        height: size.height * 0.45,
                        width: size.width * 0.16,
                        childW: Center(
                          child: Selector<CurrentState, int>(
                              selector: (context, provider) =>
                                  provider.colorIndex,
                              builder: (context, _, __) {
                                return Wrap(
                                  children: [
                                    ...List.generate(
                                      colors.length,
                                      (index) => CustomButton(
                                        margin: const EdgeInsets.all(8),
                                        onPressed: () {
                                          currentState.changeGradient(index);
                                        },
                                        pressed:
                                            currentState.colorIndex == index
                                                ? Pressed.pressed
                                                : Pressed.notPressed,
                                        animate: true,
                                        isThreeD: true,
                                        borderRadius: 100,
                                        height: 52,
                                        width: 52,
                                        shadowColor: Colors.white,
                                        backgroundColor: colors[index].color,
                                      ),
                                    )
                                  ],
                                );
                              }),
                        ),
                      ),
                      const SizedBox(height: 20),
                      FronstedContainer(
                        height: size.height * 0.25,
                        width: size.width * 0.16,
                      ),
                    ],
                  )
                      : const SizedBox.shrink(),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                    devices.length,
                    (index) => Selector<CurrentState, DeviceInfo>(
                      selector: (context, provider) => provider.currentDevice,
                      builder: (context, _, __) {
                        return CustomButton(
                          onPressed: () {
                            currentState
                                .changeSelectedDevice(devices[index].device);
                          },
                          animate: true,
                          height: 38,
                          width: 38,
                          pressed: devices[index].device ==
                                  currentState.currentDevice
                              ? Pressed.pressed
                              : Pressed.notPressed,
                          borderRadius: 50,
                          backgroundColor: Colors.black,
                          isThreeD: true,
                          shadowColor: const Color.fromRGBO(51, 145, 217, 1.0),
                          child: Center(
                            child: Icon(
                              devices[index].icon,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
  Widget _coloredBallPosition(double position, int duration, Color color){
    return Row(
      children: [
        SizedBox(width: position),
        ColoredBalls(color: color, duration: duration),
      ],
    );
  }
}
