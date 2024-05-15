import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'dart:math' as math;

class CustomPreviousButton extends StatelessWidget {
  const CustomPreviousButton({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColor.deepPurple.withOpacity(0.1),
      highlightColor: AppColor.deepPurple.withOpacity(0.2),
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Row(children: [
          Text(
            'السابق',
            style: AppStyles.kufiMedium16(context),
          ),
          const SizedBox(
            width: 4,
          ),
          Transform.rotate(
            angle: -math.pi,
            child: SvgPicture.asset(
              Assets.imagesSabhuhRightArrow,
              color: AppColor.deepPurple,
              height: 16,
            ),
          ),
        ]),
      ),
    );
  }
}
