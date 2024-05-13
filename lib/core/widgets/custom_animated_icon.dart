import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran_app/core/widgets/custom_circle_background.dart';

class CustomAnimatedIcon extends StatefulWidget {
  const CustomAnimatedIcon({super.key, required this.iconAsset});
  final String iconAsset;
  @override
  State<CustomAnimatedIcon> createState() => _CustomAnimatedIconState();
}

class _CustomAnimatedIconState extends State<CustomAnimatedIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _colorAnimation;
  late Animation<double> _curve;
  @override
  void initState() {
    super.initState();
    createAnimationController();
    _controller.repeat();
  }

  List<Color> colors = [
    const Color(0xffD0AEE4).withOpacity(0.5),
    const Color(0xffe4c6f5).withOpacity(0.3),
  ];
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return Center(
            child: Stack(
              children: [
                Center(
                  child: Stack(
                    children: colors.asMap().entries.map((e) {
                      int index = e.key;
                      var color = e.value;
                      return CustomCircleBackground(
                          width: 230 + index * 40,
                          color: color.withOpacity(_colorAnimation.value));
                    }).toList(),
                  ),
                ),
                const CustomCircleBackground(
                    width: 190, color: Color(0xffD0AEE4)),
                const CustomCircleBackground(
                    width: 150, color: Color(0xffBB8AD8)),
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 100,
                    child: SvgPicture.asset(widget.iconAsset),
                  ),
                )
              ],
            ),
          );
        });
  }

  void createAnimationController() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    _curve = CurvedAnimation(parent: _controller, curve: Curves.linear);
    _colorAnimation = Tween<double>(begin: 0.5, end: 0.2).animate(_curve);
  }
}
