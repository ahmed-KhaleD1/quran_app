import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class CustomPageNumberWidget extends StatelessWidget {
  const CustomPageNumberWidget({
    super.key,
    required this.pageNumber,
  });
  final String pageNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
              AppColor.deepOrange,
              BlendMode.srcATop,
            ),
            image: AssetImage(
              Assets.imagesPageNumber,
            )),
      ),
      child: Center(
          child: Text(
        '546',
        style: AppStyles.scheherazadeMedium16(context),
      )),
    );
  }
}
