import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/features/home/presentation/widgets/two_text_vertical.dart';

class HomePeriodOfTheDayCard extends StatelessWidget {
  const HomePeriodOfTheDayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 1.71,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Svg(Assets.imagesHomeThePeriodOfTheDayNight))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                'الأربعاء',
                style:
                    AppStyles.kufiBold28(context).copyWith(color: Colors.white),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(' م',
                        style: AppStyles.kufiMedium20(context).copyWith(
                          color: Colors.white,
                        )),
                    Text(
                      '09:36',
                      style: AppStyles.splartBold60(context)
                          .copyWith(color: Colors.white),
                    ),
                  ]),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TwoTextVertical(
                      text1: 'اخر قراءة',
                      text2: 'اخر قراءة',
                      style1: AppStyles.kufiRegular16(context)
                          .copyWith(color: Colors.white),
                      style2: AppStyles.kufiRegular16(context)
                          .copyWith(color: Colors.white)),
                  TwoTextVertical(
                      text1: 'اخر قراءة',
                      text2: 'اخر قراءة',
                      style1: AppStyles.kufiRegular16(context)
                          .copyWith(color: Colors.white),
                      style2: AppStyles.kufiRegular16(context)
                          .copyWith(color: Colors.white)),
                ],
              ),
              const SizedBox(
                height: 4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
