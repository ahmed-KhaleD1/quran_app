import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/menu_button.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/tasbih_menu_list_view.dart';

class TasbihMenu extends StatelessWidget {
  const TasbihMenu({
    super.key,
    required this.sabhuhCubit,
  });

  final SabhuhCubit sabhuhCubit;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      titlePadding: EdgeInsets.zero,
      actionsPadding: const EdgeInsets.symmetric(vertical: 16),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
      actionsAlignment: MainAxisAlignment.center,
      elevation: 0,
      title: Container(
        height: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Text(
          'قائمة التسابيح',
          style: AppStyles.kufiBold24(context)
              .copyWith(color: AppColor.deepPurple),
        ),
      ),
      content: SizedBox(
        width: double.maxFinite,
        height: MediaQuery.sizeOf(context).height * 0.56,
        child: TasbihMenuListView(
          sabhuhCubit: sabhuhCubit,
        ),
      ),
      actions: const [MenuButton()],
    );
  }
}
