import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:shimmer/shimmer.dart';

class TasbihPreviewWidgetShimmer extends StatelessWidget {
  const TasbihPreviewWidgetShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 120,
              height: 20,
              color: Colors.white,
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.flag,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Container(
                      width: 120,
                      height: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [Color(0xffFEE0B4), Colors.white],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '',
                          style: AppStyles.kufiMedium14(context),
                        ),
                        Text(
                          'مره',
                          style: AppStyles.kufiSemiBold12(context).copyWith(
                            fontSize: 11,
                          ),
                        ),
                      ]),
                ),
                Row(
                  children: [
                    Container(
                      width: 120,
                      height: 20,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.emoji_events_outlined,
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
            Text(
              '',
              style: AppStyles.digetalBold100(context),
            ),
          ],
        ),
      ),
    );
  }
}
