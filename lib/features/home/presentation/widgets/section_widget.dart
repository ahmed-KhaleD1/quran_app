import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.child,
    required this.backgroundImage,
    required this.height,
    required this.onTap,
  });
  final Widget child;
  final String backgroundImage;
  final double height;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(right: 8),
        height: height,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gradient: LinearGradient(
                colors: [Color(0xffD9CDFE), Color(0xffF5F4F6)],
                stops: [0.1, 1],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Opacity(
                opacity: 0.35,
                child: SvgPicture.asset(
                  backgroundImage,
                  height: 80,
                ),
              ),
            ),
            Center(child: child),
          ],
        ),
      ),
    );
  }
}
