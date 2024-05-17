import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem(
      {super.key,
      required this.iconAsset,
      required this.color,
      required this.onTap});
  final String iconAsset;
  final Color color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 50,
        child: SvgPicture.asset(
          iconAsset,
          color: color,
        ),
      ),
    );
  }
}
