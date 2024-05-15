import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/custom_painter/curve_paint.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/custom_toggle_buttons_list.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/sabhuh_header_section.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/tasbih_preview_bloc_builder.dart';

class SabhuhViewBody extends StatelessWidget {
  const SabhuhViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.005,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SabhuhHeaderSection(),
        ),
        SizedBox(
          height: max(8, MediaQuery.sizeOf(context).height * 0.025),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TasbihPreviewBlocBuilder(),
          ),
        ),
        Expanded(
            child: Stack(
          children: [
            const SabhuhPainterWidget(),
            Positioned(
                bottom: 20,
                left: 20,
                child: BlocBuilder<SabhuhCubit, SabhuhState>(
                    builder: (context, state) {
                  SabhuhCubit sabhuhCubit =
                      BlocProvider.of<SabhuhCubit>(context);

                  return CustomToggleButtonsList(sabhuhCubit: sabhuhCubit);
                }))
          ],
        ))
      ],
    );
  }
}
