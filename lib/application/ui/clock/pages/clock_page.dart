import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 15,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Transform.rotate(
          angle: -pi / 2,
          child: CustomPaint(
            painter: ClockPainter(),
          ),
        ));
  }
}

class ClockPainter extends CustomPainter {
  final currentDate = DateTime.now();

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final center = Offset(centerX, centerY);
    final radius = min(centerX, centerY);

    final fillCirclePaint = Paint()..color = Colors.white;
    final outlineCirclePaint = Paint()
      ..strokeWidth = 16
      ..style = PaintingStyle.stroke
      ..color = Colors.white;
    final centerDotPainter = Paint()..color = Colors.white;
    final centerOutlinePainter = Paint()
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..color = Colors.red;

    // final tickPaint = Paint()
    //   ..color = Colors.grey
    //   ..style = PaintingStyle.stroke
    //   ..strokeCap = StrokeCap.round
    //   ..strokeWidth = 1;

    final secondHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..color = Colors.red;

    final minuteHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..color = Colors.black;

    final hourHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..color = Colors.black;

    canvas.drawCircle(center, radius - 20, fillCirclePaint);
    canvas.drawCircle(center, radius - 20, outlineCirclePaint);

    final secondHandX = centerX + 80 * cos(currentDate.second * 6 * pi / 180);
    final secondHandY = centerX + 80 * sin(currentDate.second * 6 * pi / 180);

    canvas.drawLine(center, Offset(secondHandX, secondHandY), secondHandPaint);

    final minuteHandX = centerX + 80 * cos(currentDate.minute * 6 * pi / 180);
    final minuteHandY = centerX + 80 * sin(currentDate.minute * 6 * pi / 180);

    canvas.drawLine(center, Offset(minuteHandX, minuteHandY), minuteHandPaint);

    final hourHandX = centerX +
        60 * cos((currentDate.hour * 30 + currentDate.minute * .5) * pi / 180);
    final hourHandY = centerX +
        60 * sin((currentDate.hour * 30 + currentDate.minute * .5) * pi / 180);
    canvas.drawLine(center, Offset(hourHandX, hourHandY), hourHandPaint);

    canvas.drawCircle(center, 5, centerDotPainter);
    canvas.drawCircle(center, 5, centerOutlinePainter);

    // final outerCircleRadius = radius;
    // final innerCircleRadius = radius - 10;
    // for (double i = 0; i < 360; i += 12) {
    //   final x1 = centerX + (outerCircleRadius - 25) * cos(i * pi / 180);
    //   final y1 = centerX + (outerCircleRadius - 25) * sin(i * pi / 180);

    //   final x2 = centerX + innerCircleRadius * cos(i * pi / 180);
    //   final y2 = centerX + innerCircleRadius * sin(i * pi / 180);
    //   canvas.drawLine(Offset(x1, y1), Offset(x2, y2), tickPaint);
    // }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
