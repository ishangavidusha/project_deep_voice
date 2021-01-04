import 'dart:math' as Math;

import 'package:flutter/material.dart';

class SpeechNavWidget extends StatefulWidget {
  @override
  _SpeechNavWidgetState createState() => _SpeechNavWidgetState();
}

class _SpeechNavWidgetState extends State<SpeechNavWidget> with TickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  Tween<double> _rotationTween = Tween(begin: 0, end: 10);

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );

    animation = _rotationTween.animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeInBack
    ))..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: CustomPaint(
        painter: ShapePainter(animationValue: animation.value),
        child: Container(
          child: Center(child: Icon(Icons.mic, size: 56,)),
        ),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  double animationValue;
  ShapePainter({this.animationValue});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.blueAccent
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 100 + animationValue * 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}