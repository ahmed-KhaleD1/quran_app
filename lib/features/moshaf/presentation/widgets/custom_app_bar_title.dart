import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/core/widgets/custom_number_shape.dart';

class CustomAppbarTitle extends StatelessWidget {
  const CustomAppbarTitle(
      {super.key, required this.number, required this.title});
  final String number, title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomNumberShape(
          number: number,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          title,
          style: AppStyles.scheherazadeSemiBold24(context)
              .copyWith(color: AppColor.deepPurple),
        )
      ],
    );
  }
}
