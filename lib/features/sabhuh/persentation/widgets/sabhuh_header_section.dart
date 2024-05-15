import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/buttons/custom_next_button.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/buttons/custom_pervious_button.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/buttons/reset_button.dart';

class SabhuhHeaderSection extends StatelessWidget {
  const SabhuhHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SabhuhCubit sabhuhCubit = BlocProvider.of<SabhuhCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomNextButton(onTap: () {
            sabhuhCubit.nextTasbih();
          }),
          ResetButton(
            onTap: () {
              sabhuhCubit.updateTotalTasbihCount(newValue: 0);
            },
          ),
          CustomPreviousButton(onTap: () {
            sabhuhCubit.previousTasbih();
          })
        ],
      ),
    );
  }
}
