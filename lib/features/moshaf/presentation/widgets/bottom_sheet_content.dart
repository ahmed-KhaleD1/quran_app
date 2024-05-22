import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/core/widgets/custom_number_shape.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/ayah.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({
    super.key,
    required this.ayah,
    required this.sorahName,
  });
  final Ayah ayah;
  final String sorahName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Stack(children: [
        // Blur background
        Positioned(
          height: MediaQuery.sizeOf(context).height - 100,
          width: double.maxFinite,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 80,
                  height: 6,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      Text(
                        'آيه رقم ',
                        style: AppStyles.kufiMedium16(context)
                            .copyWith(color: Colors.white),
                      ),
                      CustomNumberShape(
                        number: ayah.numberInSurah.toString(),
                        numberColor: Colors.white,
                        iconColor: AppColor.deepOrange,
                      ),
                    ],
                  ),
                  Center(
                      child: Text(
                    sorahName,
                    style: AppStyles.scheherazadeMedium20(context),
                  )),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
              const Divider(
                height: 20,
                thickness: 2,
                color: Colors.grey,
              ),
              Center(
                child: Text(
                  ayah.text!,
                  style: AppStyles.quransemiBold18(context)
                      .copyWith(color: AppColor.deepOrange, height: 2),
                  textAlign: TextAlign.justify,
                ),
              ),
              const Divider(
                height: 20,
                thickness: 2,
                color: Colors.grey,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    ayah.tafseer!,
                    style:
                        AppStyles.kufiSemiBold16(context).copyWith(height: 2),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
