import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';

class AzkarDescriptionWidget extends StatelessWidget {
  const AzkarDescriptionWidget({
    super.key,
    required this.azkarData,
  });

  final AzkarDataModel azkarData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(thickness: 0.5),
        Text(
          azkarData.description!,
          textAlign: TextAlign.justify,
          style: AppStyles.kufiMedium14(context),
        )
      ],
    );
  }
}
