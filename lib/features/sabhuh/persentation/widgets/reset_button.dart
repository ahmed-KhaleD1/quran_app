import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'dart:math' as math;

class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Transform.rotate(
            angle: -math.pi / 4,
            child: const Icon(
              Icons.rotate_left_rounded,
              color: AppColor.deepOrange,
              size: 35,
            )),
      ),
    );
  }
}
