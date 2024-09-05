import 'package:flutter/material.dart';

class ColoredBalls extends StatefulWidget {
  final Color color;
  final int duration;

  const ColoredBalls({super.key, required this.color, required this.duration});

  @override
  _ColoredBallsState createState() => _ColoredBallsState();
}

class _ColoredBallsState extends State<ColoredBalls> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: widget.duration),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const double ballSize = 50.0;
        final double maxHeight = constraints.maxHeight - ballSize;

        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final double top = _animation.value * maxHeight;

            return Container(
              width: ballSize,
              height: ballSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.color,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0.2,
                    blurRadius: 8,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
              margin: EdgeInsets.only(top: top),
            );
          },
        );
      },
    );
  }
}
