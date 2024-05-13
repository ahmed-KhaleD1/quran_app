import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class TotaltasbihWidget extends StatelessWidget {
  const TotaltasbihWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.emoji_events_outlined,
          size: 20,
        ),
        const SizedBox(width: 4),
        Text.rich(TextSpan(children: [
          TextSpan(text: ' الإجمالي', style: AppStyles.kufiSemiBold12(context)),
          TextSpan(
              text: ' 10',
              style: AppStyles.kufiSemiBold12(context)
                  .copyWith(color: AppColor.deepOrange)),
          TextSpan(text: ' تسبيح', style: AppStyles.kufiSemiBold12(context))
        ]))
      ],
    );
  }
}
