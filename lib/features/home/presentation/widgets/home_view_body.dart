import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/home/presentation/view_model/home_cubit.dart';
import 'package:quran_app/features/home/presentation/widgets/home_period_of_day_card.dart';
import 'package:quran_app/features/home/presentation/widgets/main_sections.dart';
import 'package:quran_app/features/home/presentation/widgets/pary_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<Homecubit>(context).getPrayerTimes();
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          HomePeriodOfTheDayCard(),
          SizedBox(
            height: 12,
          ),
          ParyListView(),
          SizedBox(
            height: 12,
          ),
          MainSections(),
        ],
      ),
    );
  }
}
