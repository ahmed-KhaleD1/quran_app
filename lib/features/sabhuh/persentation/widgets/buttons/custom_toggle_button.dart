import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';

class CustomToggleButton extends StatelessWidget {
  const CustomToggleButton({
    super.key,
    required this.isActive,
    required this.icon,
    required this.onTap,
  });
  final bool isActive;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? AppColor.deepPurple : const Color(0xffEEEEEE),
        ),
        child: Center(
          child: Icon(
            icon,
            size: 20,
            color: isActive ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
