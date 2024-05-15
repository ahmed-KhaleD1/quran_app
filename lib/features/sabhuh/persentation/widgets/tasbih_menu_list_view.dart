import 'package:flutter/material.dart';
import 'package:quran_app/core/functions/convert_form%20english%20number_to%20_arbic.dart';
import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/tasbih_menu_item.dart';

class TasbihMenuListView extends StatelessWidget {
  const TasbihMenuListView({
    super.key,
    required this.sabhuhCubit,
  });
  final SabhuhCubit sabhuhCubit;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: sabhuhCubit.allAzkarModel.azkarList.length,
      separatorBuilder: (context, index) => Divider(
        endIndent: 16,
        indent: 16,
        height: 24,
        color: Colors.grey.shade200,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            sabhuhCubit.updateCurrentTasbihIndex(index);
            Navigator.of(context).pop();
          },
          child: TasbihMenuItem(
            totalTasbihCount: sabhuhCubit.totalTasbihCountList![index],
            isActive: sabhuhCubit.currentTasbihIndex == index,
            indexNumber: convertFormEnglishNumberToArabic(index + 1),
            azkarDataModel: sabhuhCubit.allAzkarModel.azkarList[index],
          ),
        );
      },
    );
  }
}
