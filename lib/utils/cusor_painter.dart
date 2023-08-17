import 'package:flutter/material.dart';
import 'dart:math';

class CusorPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFF83C2C0)
      ..strokeWidth = 2.0
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.arcTo(
      Rect.fromCircle(
        center: Offset(size.width / 2, 40),
        radius: size.width / 2,
      ),
      0, -pi,
      false,
    );
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}