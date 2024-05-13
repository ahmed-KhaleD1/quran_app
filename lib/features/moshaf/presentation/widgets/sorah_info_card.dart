import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran_app/constants.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/sorah_info_row.dart';

class SorahInfoCard extends StatelessWidget {
  const SorahInfoCard({super.key, required this.sorah});
  final SorahModel sorah;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [kBoxShadow],
            gradient: const LinearGradient(
                colors: [Color(0xffC68FF0), Color(0xff995FFC)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)),
        child: Stack(
          children: [
            Positioned(
                bottom: -40,
                right: -20,
                height: 200,
                width: 250,
                child: Opacity(
                  opacity: 0.25,
                  child: SvgPicture.asset(
                    Assets.imagesColoredMoshafwithShadow,
                  ),
                )),
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  sorah.name,
                  style: AppStyles.scheherazadeMedium24(context),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  sorah.englishName,
                  textDirection: TextDirection.rtl,
                  style: AppStyles.kufiMedium24(context)
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(
                  width: 250,
                  height: 10,
                  child: Divider(
                    color: Colors.white38,
                    height: 1,
                    // endIndent: 80,
                    // indent: 80,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SorahInfoRow(
                        sorah: sorah,
                        dotColor: Colors.black26,
                        style: AppStyles.splartMedium20(context)
                            .copyWith(color: Colors.white.withOpacity(0.7))),
                    Container(
                      height: 8,
                      width: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black26),
                    ),
                    Text(
                      kQuranPartsInArabic[sorah.ayahs![0].juz! - 1],
                      style: AppStyles.splartMedium20(context)
                          .copyWith(color: Colors.white.withOpacity(0.7)),
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
