import 'package:flutter/material.dart';
import 'package:quran_app/core/functions/convert_form%20english%20number_to%20_arbic.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class TotaltasbihWidget extends StatelessWidget {
  const TotaltasbihWidget({super.key, required this.totalTasbihCount});
  final int totalTasbihCount;
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
              text: convertFormEnglishNumberToArabic(totalTasbihCount),
              style: AppStyles.kufiSemiBold12(context)
                  .copyWith(color: AppColor.deepOrange)),
          TextSpan(text: ' تسبيح', style: AppStyles.kufiSemiBold12(context))
        ]))
      ],
    );
  }
}
