import 'dart:math';

import 'package:flutter/material.dart';

class PieChart extends CustomPainter {
  final List<Category> categories;
  final double width;
  PieChart({required this.categories, required this.width});
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width / 2;

    double total = 0;
    categories.forEach((element) => total += element.amount);
    double startRadian = -pi / 2;
    for (var index = 0; index < categories.length; index++) {
      final currentCategory = categories.elementAt(index);
      final SweepRadian = currentCategory.amount / total * 2 * pi;
      paint.color = pieColor.elementAt(index % categories.length);
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startRadian,
        SweepRadian,
        false,
        paint,
      );
      startRadian += SweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class Category {
  final String name;
  final int amount;
  Category(this.name, {required this.amount});
}

final CategoryItems = [
  Category('To Do', amount: 49),
  Category('Completed', amount: 57),
  Category('Active', amount: 23),
  Category('Review', amount: 18),
];

final pieColor = [
  Color.fromRGBO(0, 60, 255, 1),
  Color.fromRGBO(217, 111, 248, 1),
  Color.fromRGBO(27, 210, 164, 1),
  Color.fromRGBO(255, 110, 1, 1),
];
