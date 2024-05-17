import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/features/home/data/models/prayer_time_model.dart';

class PrayTimeCard extends StatelessWidget {
  const PrayTimeCard({super.key, required this.prayerTimeModel});
  final PrayerTimeModel prayerTimeModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 69,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
              colors: [Color(0xffD9CDFE), Color(0xffF5F4F6)],
              stops: [0.25, 1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(
              prayerTimeModel.time,
              style: AppStyles.splartMedium24(context).copyWith(height: 0.8),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(
              prayerTimeModel.name,
              style: AppStyles.kufiBold16(context)
                  .copyWith(color: AppColor.deepPurple),
            ),
          )
        ],
      ),
    );
  }
}
