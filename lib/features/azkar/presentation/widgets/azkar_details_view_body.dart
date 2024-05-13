import 'package:flutter/cupertino.dart';
import 'package:quran_app/core/functions/convert_form%20english%20number_to%20_arbic.dart';
import 'package:quran_app/core/models/azkar_model/all_azkar_model.dart';
import 'package:quran_app/features/azkar/presentation/widgets/azkar_details_widget.dart';

class AzkarDetailsViewBody extends StatelessWidget {
  const AzkarDetailsViewBody({super.key, required this.azkar});
  final AllAzkarModel azkar;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: azkar.azkarList.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: 16,
        ),
        itemBuilder: (context, index) {
          return AzkardetailsWidget(
              azkarData: azkar.azkarList[index],
              numberInPage: convertFormEnglishNumberToArabic(index + 1));
        },
      ),
    );
  }
}
