import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class CustomAyaNumber extends StatelessWidget {
  const CustomAyaNumber({super.key, required this.number});
  final String number;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            AppColor.deepOrange,
            BlendMode.srcATop,
          ),
          image: AssetImage(
            Assets.imagesAyaNumber,
          ),
        ),
      ),
      child: Center(
        child: Text(
          number,
          style: AppStyles.scheherazadeMedium12(context),
          textDirection: TextDirection.ltr, // Set text direction to LTR
        ),
      ),
    );
  }
}
