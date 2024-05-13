import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class CustomNumberShape extends StatelessWidget {
  const CustomNumberShape({
    super.key,
    required this.number,
  });
  final String number;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          children: [
            SvgPicture.asset(Assets.imagesNumShape, color: AppColor.deepPurple),
            Center(
                child: Text(
              number,
              style: AppStyles.splartMedium24(context),
            ))
          ],
        ));
  }
}
