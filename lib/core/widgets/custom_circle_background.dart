import 'package:flutter/material.dart';

class CustomCircleBackground extends StatelessWidget {
  const CustomCircleBackground({
    super.key,
    required this.width,
    required this.color,
  });

  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: width,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color)),
    );
  }
}
