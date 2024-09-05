import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
    double widthRatio = size.width / baseWidth;
    double heightRatio = size.height / baseHeight;
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
          size.width > 300
              ? _coloredBallPosition(200, 2, ballsColors[0])
              : const SizedBox.shrink(),
          size.width > 500
              ? _coloredBallPosition(400, 4, ballsColors[1])
              : const SizedBox.shrink(),
          size.width > 700
              ? _coloredBallPosition(600, 3, ballsColors[2])
              : const SizedBox.shrink(),
          size.width > 900
              ? _coloredBallPosition(800, 2, ballsColors[3])
              : const SizedBox.shrink(),
          size.width > 1100
              ? _coloredBallPosition(1000, 4, ballsColors[4])
              : const SizedBox.shrink(),
          size.width > 1300
              ? _coloredBallPosition(1200, 3, ballsColors[5])
              : const SizedBox.shrink(),
          size.width > 1500
              ? _coloredBallPosition(1400, 2, ballsColors[6])
              : const SizedBox.shrink(),
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
                  size.width > 700
                      ? Column(
                          children: [
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.00999)
                                ..rotateY(-0.06),
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin:
                                    const EdgeInsets.only(top: 0, bottom: 10),
                                child: FronstedContainer(
                                  childW: Container(
                                    padding: const EdgeInsets.only(left: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Transform(
                                      transform: Matrix4.identity()
                                        ..setEntry(3, 2, 0.00999)
                                        ..rotateY(-0.04),
                                      alignment: FractionalOffset.center,
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    AutoSizeText(
                                                      'Welcome!\nExplore my portfolio like an app and discover what we can create together.',
                                                      style: GoogleFonts.exo(
                                                          // fontSize: 25,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                      maxFontSize: 25,
                                                      minFontSize: 20,
                                                      maxLines: 5,
                                                    ).animate().fadeIn(
                                                        delay: .8.seconds,
                                                        duration: .7.seconds),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  height: 395 * heightRatio,
                                  width: 247.5 * widthRatio,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  currentState.launchInBrowser(linkedIn);
                                },
                                child: Transform(
                                  transform: Matrix4.identity()
                                    ..setEntry(3, 2, 0.009999)
                                    ..rotateY(-0.07),
                                  alignment: Alignment.topCenter,
                                  child: FronstedContainer(
                                    childW: Center(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              FontAwesomeIcons.handshake,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              height: 10 * heightRatio,
                                            ),
                                            Flexible(
                                                child: AutoSizeText(
                                              "Let's connect!",
                                              style: GoogleFonts.exo(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize:
                                                    28 * widthRatio * heightRatio,
                                              ),
                                              textAlign: TextAlign.center,
                                              maxFontSize: 28,
                                              minFontSize: 15,
                                            )),
                                          ],
                                        ).animate().fadeIn(
                                            delay: 1.seconds, duration: .7.seconds),
                                      ),
                                    ),
                                    height: 175.5 * heightRatio,
                                    width: 245 * widthRatio,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : const SizedBox.shrink(),
                  const SizedBox(width: 10),
                  //Main Device Screen
                  SizedBox(
                    height: size.height - 100,
                    child: Consumer<CurrentState>(builder: (context, _, __) {
                      return DeviceFrame(
                        device: currentState.currentDevice,
                        screen: Container(
                          decoration: BoxDecoration(
                              gradient:
                                  colors[currentState.colorIndex].gradient),
                          child:
                              ScreenWrapper(childW: currentState.currentScreen),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(width: 10),
                  //Right frosted container
                  size.width > 700
                      ? Column(
                          children: [
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.01)
                                ..rotateY(0.05),
                              alignment: Alignment.bottomCenter,
                              child: FronstedContainer(
                                height: 395 * heightRatio,
                                width: 247.5 * widthRatio,
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
                                                  currentState
                                                      .changeGradient(index);
                                                },
                                                pressed:
                                                    currentState.colorIndex ==
                                                            index
                                                        ? Pressed.pressed
                                                        : Pressed.notPressed,
                                                animate: true,
                                                isThreeD: true,
                                                borderRadius: 100,
                                                height: 52,
                                                width: 52,
                                                shadowColor: Colors.white,
                                                backgroundColor:
                                                    colors[index].color,
                                              ),
                                            )
                                          ],
                                        );
                                      }),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.00999)
                                ..rotateY(0.06),
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin:
                                const EdgeInsets.only(top: 0, bottom: 10),
                                child: FronstedContainer(
                                  childW: Center(
                                    child: Container(
                                      margin: const EdgeInsets.all(10),
                                      padding:
                                      EdgeInsets.all(10 * widthRatio),
                                      child: Center(
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              AutoSizeText(
                                                '"When you realize your programming skills are just a series of ChatGPT prompts and copy-pastes"',
                                                style: GoogleFonts.inter(
                                                  // fontSize: 30,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400),
                                                maxFontSize: 25,
                                                minFontSize: 10,
                                                maxLines: 4,
                                              ),
                                              Align(
                                                  alignment: Alignment.bottomRight,
                                                  child: AutoSizeText(
                                                    '-Anonymous',
                                                    style: GoogleFonts.inter(
                                                      // fontSize: 12,
                                                        color: Colors.white
                                                            .withOpacity(0.6),
                                                        fontWeight:
                                                        FontWeight.w400),
                                                    maxFontSize: 12,
                                                    minFontSize: 6,
                                                    maxLines: 1,
                                                  )),
                                            ],
                                          )),
                                    ),
                                  ).animate().fadeIn(
                                      delay: 1.seconds, duration: .7.seconds),
                                  height: 175.5 * heightRatio,
                                  width: 245 * widthRatio,
                                ),
                              ),
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

  Widget _coloredBallPosition(double position, int duration, Color color) {
    return Row(
      children: [
        SizedBox(width: position),
        ColoredBalls(color: color, duration: duration),
      ],
    );
  }
}
