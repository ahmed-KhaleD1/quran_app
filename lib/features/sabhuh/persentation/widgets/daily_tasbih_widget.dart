import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran_app/core/functions/convert_form%20english%20number_to%20_arbic.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class DailyTasbihWidget extends StatelessWidget {
  const DailyTasbihWidget({super.key, required this.dailyCount});
  final int dailyCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.flag,
          size: 16,
        ),
        const SizedBox(width: 4),
        Text.rich(TextSpan(children: [
          TextSpan(text: ' اليوم', style: AppStyles.kufiSemiBold12(context)),
          TextSpan(
              text: convertFormEnglishNumberToArabic(dailyCount),
              style: AppStyles.kufiSemiBold12(context)
                  .copyWith(color: AppColor.deepOrange)),
          TextSpan(text: ' تسبيح', style: AppStyles.kufiSemiBold12(context))
        ]))
      ],
    );
  }
}
