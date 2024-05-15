import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran_app/core/functions/convert_form%20english%20number_to%20_arbic.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class TasbihMenuItem extends StatelessWidget {
  const TasbihMenuItem(
      {super.key,
      required this.azkarDataModel,
      required this.indexNumber,
      required this.isActive,
      required this.totalTasbihCount});
  final AzkarDataModel azkarDataModel;
  final String indexNumber;
  final bool isActive;
  final int totalTasbihCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: SizedBox(
          width: 25,
          child: Text(
            indexNumber,
            style: AppStyles.aimriBold18(context)
                .copyWith(color: isActive ? AppColor.deepOrange : Colors.black),
          ),
        )),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Text(azkarDataModel.content!,
                  textAlign: TextAlign.center,
                  style: AppStyles.scheherazadeSemiBold20(context).copyWith(
                      color: isActive ? AppColor.deepOrange : Colors.black)),
              const SizedBox(
                height: 4,
              ),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.flag,
                            size: 12,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: 'عدد المرات : ',
                                style: AppStyles.kufiMedium12(context)),
                            TextSpan(
                                text: azkarDataModel.count,
                                style: AppStyles.splartMedium16(context))
                          ]))
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.emoji_events_outlined,
                            size: 20,
                          ),
                          Text(
                            convertFormEnglishNumberToArabic(totalTasbihCount),
                            style: AppStyles.splartMedium16(context),
                          )
                        ],
                      )
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }
}
