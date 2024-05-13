import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';

class CustomdotsIndicator extends StatelessWidget {
  const CustomdotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: List.generate(
        3,
        (index) => CustomDot(isActive: index == currentPageIndex),
      ),
    );
  }
}

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 6),
      width: isActive ? 48 : 12,
      height: 12,
      duration: const Duration(milliseconds: 200),
      decoration: ShapeDecoration(
        color: isActive ? AppColor.deepPurple : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
