import 'package:flutter/material.dart';

class CustomFloationgActionButton extends StatelessWidget {
  const CustomFloationgActionButton(
      {super.key, required this.color, required this.iconData, this.onPressed});
  final Color color;
  final IconData iconData;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      hoverElevation: 5,
      shape: const CircleBorder(),
      onPressed: onPressed,
      backgroundColor: color,
      child: Icon(
        iconData,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
