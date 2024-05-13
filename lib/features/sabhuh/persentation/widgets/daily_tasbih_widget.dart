import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class DailyTasbihWidget extends StatelessWidget {
  const DailyTasbihWidget({super.key});

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
              text: ' 10',
              style: AppStyles.kufiSemiBold12(context)
                  .copyWith(color: AppColor.deepOrange)),
          TextSpan(text: ' تسبيح', style: AppStyles.kufiSemiBold12(context))
        ]))
      ],
    );
  }
}
