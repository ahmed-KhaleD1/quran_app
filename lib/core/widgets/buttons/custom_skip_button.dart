import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class CustomSkipButton extends StatelessWidget {
  const CustomSkipButton({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Text(
              text,
              style: AppStyles.kufiMedium16(context)
                  .copyWith(color: AppColor.deepPurple),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColor.deepPurple,
            ),
          ],
        ));
  }
}
