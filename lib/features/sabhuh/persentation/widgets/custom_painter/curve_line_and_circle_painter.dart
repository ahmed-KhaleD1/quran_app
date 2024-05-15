import 'dart:ui';

import 'package:flutter/material.dart';

class CurveLineAndCirclePainter extends CustomPainter {
  final Animation<double> animation;

  CurveLineAndCirclePainter({required this.animation});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;
    Path path = Path()
      ..quadraticBezierTo(size.width / 2 + 60, size.height / 2 - 120,
          size.width - 10, size.height);
    canvas.drawPath(path, paint);

    drawCirclesOnCurve(canvas, path, size);
  }

  void drawCirclesOnCurve(Canvas canvas, Path path, Size size) {
    PathMetrics pathMetrics = path.computeMetrics();
    Paint purplePaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff8F42E9),
          Color(0xff5B1DA3),
        ],
      ).createShader(const Rect.fromLTWH(0, 0, 0, 0))
      ..style = PaintingStyle.fill;
    Paint pinkPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffE6C7FF),
          Color(0xffB477FF),
        ],
      ).createShader(const Rect.fromLTWH(0, 0, 0, 0))
      ..style = PaintingStyle.fill;

    int i = 1;

    for (PathMetric pathMetric in pathMetrics) {
      for (double t = 0.1; t < 1; t += 0.125) {
        Tangent tangent = pathMetric.getTangentForOffset(pathMetric.length *
            ((t + animation.value) - (t + animation.value).floor()))!;
        if (i % 2 == 0) {
          canvas.drawCircle(tangent.position, 25, purplePaint);
        } else {
          canvas.drawCircle(tangent.position, 25, pinkPaint);
        }

        i++;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
