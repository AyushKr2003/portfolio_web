import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FronstedContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget? childW;
  const FronstedContainer({super.key, required this.height, required this.width, this.childW});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: SizedBox(
                height: height,
                width: width,
              ),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.3),
                    Colors.white.withOpacity(0.2)
                  ],
                ),
              ),
              child: childW,
            )
          ],
        ),
      ),
    );
  }
}
