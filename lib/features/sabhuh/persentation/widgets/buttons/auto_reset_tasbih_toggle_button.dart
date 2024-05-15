import 'package:flutter/material.dart';
import 'package:quran_app/core/functions/custom_snackbar.dart';
import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/buttons/custom_toggle_button.dart';

class AutoResetTasbihCounterToggleButton extends StatelessWidget {
  const AutoResetTasbihCounterToggleButton({
    super.key,
    required this.sabhuhCubit,
  });

  final SabhuhCubit sabhuhCubit;

  @override
  Widget build(BuildContext context) {
    return CustomToggleButton(
        onTap: () {
          sabhuhCubit.updateAutoresetTasbihCounter();
          sabhuhCubit.autoResetTasbihCounter
              ? customToast(
                  message: 'تم تفعيل تصفير العداد تلقائياً',
                  backgroundColor: Colors.green)
              : customToast(
                  message: 'تم إيقاف تصفير العداد تلقائياً',
                  backgroundColor: Colors.red);
        },
        isActive: sabhuhCubit.autoResetTasbihCounter,
        icon: Icons.cleaning_services_outlined);
  }
}
