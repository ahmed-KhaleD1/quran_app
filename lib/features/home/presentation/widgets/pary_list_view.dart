import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/home/presentation/view_model/home_cubit.dart';
import 'package:quran_app/features/home/presentation/view_model/home_state.dart';
import 'package:quran_app/features/home/presentation/widgets/pary_time_card.dart';

class ParyListView extends StatelessWidget {
  const ParyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Homecubit, Homestate>(
      builder: (context, state) {
        return state is PrayertimeLoading
            ? const CircularProgressIndicator()
            : SizedBox(
                height: 80,
                child: ListView.separated(
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
                      prayerTimeModel: BlocProvider.of<Homecubit>(context)
                          .prayerModel
                          .prayerList[index],
                    );
                  },
                ),
              );
      },
    );
  }
}
