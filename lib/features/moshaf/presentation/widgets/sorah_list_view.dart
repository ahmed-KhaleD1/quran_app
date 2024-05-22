import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/constants.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_fonsts.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/ayah.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';
import 'package:quran_app/features/moshaf/presentation/view_model/sorah_cubit/sorah_cubit.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/custom_quran_page_header.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/function/convert_number_to_unicode.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/show%20_transparent_bottom_sheet.dart';

class SorahListView extends StatelessWidget {
  const SorahListView({super.key, required this.sorah});
  final SorahModel sorah;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SorahCubit(),
      child: BlocBuilder<SorahCubit, SorahState>(
        builder: (context, state) {
          SorahCubit sorahCubit = BlocProvider.of<SorahCubit>(context);
          List<List<Ayah>> ayahListInPage =
              sorahCubit.getAyahListInPage(sorah.ayahs!);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: ayahListInPage.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: CustomQuranPageHeader(
                          juz: kQuranPartsInArabic[
                              ayahListInPage[index][0].juz! - 1],
                          pageNumber: ayahListInPage[index][0].page.toString(),
                        ),
                      ),
                      Text.rich(
                        strutStyle: StrutStyle(
                            leading: 1.4,
                            height: 1.4,
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 18)),
                        textAlign: TextAlign.justify,
                        TextSpan(
                          locale: const Locale('ar'),
                          children: ayahListInPage[index].map((e) {
                            return TextSpan(
                              locale: const Locale('ar'),
                              children: [
                                TextSpan(
                                  style: AppStyles.quransemiBold18(context),
                                  text: e.text,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      showTransparentBottomSheet(
                                          context, e, sorah.name);
                                    },
                                ),
                                TextSpan(
                                  text:
                                      ' ${convertNumbertToUniCode(e.numberInSurah!)} ',
                                  style: const TextStyle(
                                    fontSize: 40,
                                    color: AppColor.deepOrange,
                                    fontFamily: AppFonst.ayatQuran,
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  );
                }),
          );
        },
      ),
    );
  }
}
