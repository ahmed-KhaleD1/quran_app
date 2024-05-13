import 'package:flutter/material.dart';
import 'package:quran_app/core/functions/convert_form%20english%20number_to%20_arbic.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/core/widgets/cumstom_aya_number.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';

class SorahListView extends StatelessWidget {
  const SorahListView({super.key, required this.sorah});
  final SorahModel sorah;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '',
        children: sorah.ayahs!.map((e) {
          return TextSpan(
            text: 'أحمد',
            style: AppStyles.scheherazadeMedium16(context),
            children: [
              WidgetSpan(
                child: CustomAyaNumber(
                  number: convertFormEnglishNumberToArabic(e.numberInSurah!),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
    // return Transform(
    //   alignment: Alignment.center,
    //   transform: Matrix4.identity()..scale(-1.0, 1.0),
    //   child: Text.rich(
    //       softWrap: true,
    //       textDirection: TextDirection.ltr,
    //       textAlign: TextAlign.justify,
    //       TextSpan(
    //           children: sorah.ayahs!.map((e) {
    //         return TextSpan(
    //           text: '',
    //           children: [
    //             WidgetSpan(
    //                 child: Transform(
    //                     alignment: Alignment.center,
    //                     transform: Matrix4.identity()..scale(-1.0, 1.0),
    //                     child: Text(
    //                       e.text!,
    //                       textAlign: TextAlign.justify,
    //                     ))),
    //             WidgetSpan(
    //               child: Transform(
    //                   alignment: Alignment.center,
    //                   transform: Matrix4.identity()..scale(-1.0, 1.0),
    //                   child:
    //                       CustomAyaNumber(number: e.numberInSurah.toString())),
    //             ),
    //           ],
    //         );
    //       }).toList())),
    // );
  }
}
