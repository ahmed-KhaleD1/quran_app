import 'package:flutter/material.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';
import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/daily_tasbih_widget.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/tasbih_count_widget.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/total_tasbih_widget.dart';

class TasbihInfoWidget extends StatelessWidget {
  const TasbihInfoWidget({
    super.key,
    required this.tasbihModel,
    required this.sabhuhCubit,
  });
  final AzkarDataModel tasbihModel;
  final SabhuhCubit sabhuhCubit;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DailyTasbihWidget(dailyCount: sabhuhCubit.dailyTasbihCount),
        TasbihCountWidget(tasbihCount: tasbihModel.count!),
        TotaltasbihWidget(
            totalTasbihCount: sabhuhCubit
                .totalTasbihCountList![sabhuhCubit.currentTasbihIndex]),
      ],
    );
  }
}
