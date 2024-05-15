import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran_app/core/functions/custom_snackbar.dart';
import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/buttons/custom_toggle_button.dart';

class AutoReplacementModeToggleButton extends StatelessWidget {
  const AutoReplacementModeToggleButton({
    super.key,
    required this.sabhuhCubit,
  });

  final SabhuhCubit sabhuhCubit;

  @override
  Widget build(BuildContext context) {
    return CustomToggleButton(
        onTap: () {
          sabhuhCubit.updateEnableAutoReplacement();
          sabhuhCubit.enableAutoReplacement
              ? customToast(
                  message: 'التبديل التلقائي بعد إتمام عدد المرات',
                  backgroundColor: Colors.green)
              : customToast(
                  message: 'تم إيقاف التبديل التلقائي',
                  backgroundColor: Colors.red);
        },
        isActive: sabhuhCubit.enableAutoReplacement,
        icon: FontAwesomeIcons.shuffle);
  }
}
