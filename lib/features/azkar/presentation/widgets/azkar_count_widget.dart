import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';

class AzkarCountWidget extends StatelessWidget {
  const AzkarCountWidget({
    super.key,
    required this.azkarData,
  });

  final AzkarDataModel azkarData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
          color: const Color(0xffF0F0F0),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Text.rich(TextSpan(children: [
          TextSpan(
              text: 'عدد المرات : ', style: AppStyles.kufiMedium14(context)),
          TextSpan(
              text: azkarData.count,
              style: AppStyles.splartMedium20(context).copyWith(
                color: AppColor.deepOrange,
              ))
        ])),
      ),
    );
  }
}
