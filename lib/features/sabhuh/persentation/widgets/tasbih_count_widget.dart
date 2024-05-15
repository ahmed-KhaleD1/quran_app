import 'package:flutter/material.dart';
import 'package:quran_app/core/functions/convert_form%20english%20number_to%20_arbic.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class TasbihCountWidget extends StatelessWidget {
  const TasbihCountWidget({super.key, required this.tasbihCount});
  final String tasbihCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              colors: [Color(0xffFEE0B4), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          convertFormEnglishNumberToArabic(int.parse(tasbihCount)),
          style: AppStyles.kufiMedium14(context),
        ),
        Text(
          'مره',
          style: AppStyles.kufiSemiBold12(context).copyWith(
            fontSize: 11,
          ),
        ),
      ]),
    );
  }
}
