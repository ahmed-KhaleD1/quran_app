import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/core/models/azkar_model/azkar_item_model.dart';
import 'package:quran_app/features/azkar/presentation/widgets/azkar_details_view_body.dart';

class AzkarDetailsView extends StatelessWidget {
  const AzkarDetailsView({super.key, required this.azkar});
  final AzkarItemModel azkar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(azkar.title,
            style: AppStyles.kufiBold20(context)
                .copyWith(color: AppColor.deepPurple)),
        centerTitle: true,
      ),
      body: AzkarDetailsViewBody(azkar: azkar.azkar),
    );
  }
}
