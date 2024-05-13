import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Row(children: [
          SvgPicture.asset(
            Assets.imagesSabhuhRightArrow,
            color: AppColor.deepPurple,
            height: 16,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            'التالي',
            style: AppStyles.kufiMedium16(context),
          ),
        ]),
      ),
    );
  }
}
