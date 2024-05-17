import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/features/home/presentation/view_model/date_time_cubit/date_time_cubit.dart';
import 'package:quran_app/features/home/presentation/view_model/date_time_cubit/date_time_state.dart';

import 'package:quran_app/features/home/presentation/widgets/two_text_vertical.dart';

class HomePeriodOfTheDayCard extends StatelessWidget {
  const HomePeriodOfTheDayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DateTimeCubit(),
      child:
          BlocBuilder<DateTimeCubit, DateTimeState>(builder: (context, state) {
        DateTimeCubit dateTimeCubit = BlocProvider.of<DateTimeCubit>(context);
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Svg(dateTimeCubit.getTimePeriodImage()))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: max(8, MediaQuery.sizeOf(context).height * 0.014),
              ),
              Text(
                dateTimeCubit.getArabicDayOfWeek(),
                style:
                    AppStyles.kufiBold28(context).copyWith(color: Colors.white),
              ),
              Text(
                dateTimeCubit.getTimeInArabic(),
                style: AppStyles.splartBold42(context)
                    .copyWith(color: Colors.white, height: 0.8),
              ),
              const Expanded(child: SizedBox()),
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
                      text1: dateTimeCubit.getGregorianCalendarInArabic(),
                      text2: dateTimeCubit.getHijriDateInArabic(),
                      style1: AppStyles.kufiRegular16(context)
                          .copyWith(color: Colors.white),
                      style2: AppStyles.kufiBold16(context)
                          .copyWith(color: Colors.white)),
                ],
              ),
              const SizedBox(
                height: 4,
              )
            ],
          ),
        );
      }),
    );
  }
}
