import 'package:flutter/material.dart';
import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/buttons/auto_replacement_toggle_button.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/buttons/auto_reset_tasbih_toggle_button.dart';

class CustomToggleButtonsList extends StatelessWidget {
  const CustomToggleButtonsList({
    super.key,
    required this.sabhuhCubit,
  });

  final SabhuhCubit sabhuhCubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoReplacementModeToggleButton(sabhuhCubit: sabhuhCubit),
        const SizedBox(
          height: 8,
        ),
        AutoResetTasbihCounterToggleButton(sabhuhCubit: sabhuhCubit),
      ],
    );
  }
}
