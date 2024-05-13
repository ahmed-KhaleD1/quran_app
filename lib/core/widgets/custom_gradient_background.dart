import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';

class CustomGradientBackground extends StatelessWidget {
  const CustomGradientBackground({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.white, AppColor.lightPurple],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.5, 1.0],
      )),
      child: child,
    );
  }
}
