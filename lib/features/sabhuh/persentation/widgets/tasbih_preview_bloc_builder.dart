import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';
import 'package:quran_app/core/widgets/shimmers/tasbih_preview_widget_shimmer.dart';
import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/tasbih_preview_widget.dart';

class TasbihPreviewBlocBuilder extends StatelessWidget {
  const TasbihPreviewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SabhuhCubit, SabhuhState>(
      builder: (context, state) {
        SabhuhCubit sabhuhCubit = BlocProvider.of<SabhuhCubit>(context);
        if (state is SabhuhLoading) {
          return const TasbihPreviewWidgetShimmer();
        } else {
          AzkarDataModel tasbihModel = sabhuhCubit.tasbihModel;
          return TasbihPreviewWidget(
              tasbihModel: tasbihModel, sabhuhCubit: sabhuhCubit);
        }
      },
    );
  }
}
