import 'package:flutter/material.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/tasbih_card.dart';

class TasbihPreviewWidget extends StatelessWidget {
  const TasbihPreviewWidget({
    super.key,
    required this.tasbihModel,
    required this.sabhuhCubit,
  });

  final AzkarDataModel tasbihModel;
  final SabhuhCubit sabhuhCubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TasbihCard(
          tasbihModel: tasbihModel,
        ),
        Text(
          sabhuhCubit.totalTasbihCount.toString(),
          style: AppStyles.digetalBold100(context),
        ),
      ],
    );
  }
}
