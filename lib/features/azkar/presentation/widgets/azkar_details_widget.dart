import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/core/widgets/custom_number_shape.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';
import 'package:quran_app/features/azkar/presentation/widgets/azkar_count_widget.dart';
import 'package:quran_app/features/azkar/presentation/widgets/azkar_description_widget.dart';

class AzkardetailsWidget extends StatelessWidget {
  const AzkardetailsWidget(
      {super.key, required this.azkarData, required this.numberInPage});
  final AzkarDataModel azkarData;
  final String numberInPage;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      elevation: 0.3,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: Colors.grey.withOpacity(0.07)),
        child: Column(children: [
          Row(
            children: [
              CustomNumberShape(number: numberInPage),
              const SizedBox(
                width: 8,
              ),
              AzkarCountWidget(azkarData: azkarData)
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            azkarData.content!,
            style: AppStyles.aimriBold22(context),
            textAlign: TextAlign.justify,
          ),
          azkarData.description != ""
              ? AzkarDescriptionWidget(azkarData: azkarData)
              : const SizedBox()
        ]),
      ),
    );
  }
}
