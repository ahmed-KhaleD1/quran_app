import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/widgets/shimmers/pray_list_shimmer.dart';
import 'package:quran_app/features/home/presentation/view_model/home_cubit.dart';
import 'package:quran_app/features/home/presentation/view_model/home_state.dart';
import 'package:quran_app/features/home/presentation/widgets/pray_time_card.dart';

class ParyListView extends StatelessWidget {
  const ParyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is PrayertimeSuccess) {
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            separatorBuilder: (context, index) {
              if (index == 4) {
                return const SizedBox();
              }
              return const SizedBox(
                width: 8,
              );
            },
            itemBuilder: (context, index) {
              return PrayTimeCard(
                prayerTimeModel: state.prayerModel.prayerList[index],
              );
            },
          );
        } else if (state is PrayertimeLoading) {
          return const PrayListShimmer();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
