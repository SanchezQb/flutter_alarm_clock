import 'dart:math';

import 'package:flutter/material.dart';

class ClockWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 270,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.07),
            spreadRadius: 0.5,
            blurRadius: 20,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Transform.rotate(
        angle: -pi / 2,
        child: CustomPaint(
          painter: ClockPainter(context),
        ),
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  final currentDate = DateTime.now();

  final BuildContext context;

  ClockPainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    final Brightness brightness = Theme.of(context).brightness;
    final alternateColor =
        brightness == Brightness.light ? Colors.black : Colors.white;
    final correspondingColor =
        brightness == Brightness.light ? Colors.white : Colors.black;
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final center = Offset(centerX, centerY);
    final radius = min(centerX, centerY);

    final fillCirclePaint = Paint()..color = correspondingColor;
    final outlineCirclePaint = Paint()
      ..strokeWidth = 16
      ..style = PaintingStyle.stroke
      ..color = correspondingColor;
    final centerDotPainter = Paint()..color = correspondingColor;
    final centerOutlinePainter = Paint()
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..color = Colors.orange;

    final secondHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round
      ..color = Colors.orange;

    final minuteHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round
      ..color = alternateColor;

    final hourHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round
      ..color = alternateColor;

    canvas.drawCircle(center, radius - 20, fillCirclePaint);
    canvas.drawCircle(center, radius - 20, outlineCirclePaint);

    final hourHandX = centerX +
        60 * cos((currentDate.hour * 30 + currentDate.minute * .5) * pi / 180);
    final hourHandY = centerX +
        60 * sin((currentDate.hour * 30 + currentDate.minute * .5) * pi / 180);
    canvas.drawLine(center, Offset(hourHandX, hourHandY), hourHandPaint);

    final minuteHandX = centerX + 80 * cos(currentDate.minute * 6 * pi / 180);
    final minuteHandY = centerX + 80 * sin(currentDate.minute * 6 * pi / 180);

    canvas.drawLine(center, Offset(minuteHandX, minuteHandY), minuteHandPaint);

    final secondHandX = centerX + 80 * cos(currentDate.second * 6 * pi / 180);
    final secondHandY = centerX + 80 * sin(currentDate.second * 6 * pi / 180);

    canvas.drawLine(center, Offset(secondHandX, secondHandY), secondHandPaint);

    canvas.drawCircle(center, 5, centerDotPainter);
    canvas.drawCircle(center, 5, centerOutlinePainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
