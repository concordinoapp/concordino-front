import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color.fromARGB(196,196,196,196)
      ..strokeWidth = 2;
    Offset start = Offset(0, size.height / 2);
    Offset end = Offset(size.width, size.height / 2);
    canvas.drawLine(start, end, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}