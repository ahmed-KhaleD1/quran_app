import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton(
      {super.key, required this.isActive, required this.onTap});
  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 10,
              offset: Offset(2, 2.50),
              spreadRadius: 0,
            )
          ],
          gradient: isActive
              ? const LinearGradient(
                  colors: [Color(0xff8A38BD), Color(0xff5708C1)],
                  stops: [0.3, 0.8],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)
              : null,
        ),
        child: Icon(
          Icons.home,
          color: isActive ? Colors.white : AppColor.lightGrey,
          size: 32,
        ),
      ),
    );
  }
}
