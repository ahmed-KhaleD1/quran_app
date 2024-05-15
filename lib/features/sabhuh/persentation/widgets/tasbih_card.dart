import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/tasbih_info_widget.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/tasbih_menu.dart';

class TasbihCard extends StatelessWidget {
  const TasbihCard({
    super.key,
    required this.tasbihModel,
  });

  final AzkarDataModel tasbihModel;
  @override
  Widget build(BuildContext context) {
    SabhuhCubit sabhuhCubit = BlocProvider.of<SabhuhCubit>(context);
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (contex) => TasbihMenu(
            sabhuhCubit: sabhuhCubit,
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
                colors: [Color(0xffEBEBEB), Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: Center(
                child: Text(
                  tasbihModel.content!,
                  style: AppStyles.scheherazadeSemiBold24(context)
                      .copyWith(color: AppColor.deepPurple),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: max(8, MediaQuery.sizeOf(context).height * 0.015),
            ),
            TasbihInfoWidget(
                tasbihModel: tasbihModel, sabhuhCubit: sabhuhCubit),
          ],
        ),
      ),
    );
  }
}
