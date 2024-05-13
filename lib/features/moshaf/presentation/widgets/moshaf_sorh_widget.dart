import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/core/widgets/custom_number_shape.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/sorah_info_row.dart';

class MoshafSorhWidget extends StatelessWidget {
  const MoshafSorhWidget({
    super.key,
    required this.sorah,
    required this.onTap,
  });
  final SorahModel sorah;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 6),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            CustomNumberShape(
              number: sorah.number.toString(),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sorah.name.substring(8),
                  textDirection: TextDirection.rtl,
                  style: AppStyles.scheherazadeSemiBold24(context),
                ),
                const SizedBox(
                  height: 8,
                ),
                SorahInfoRow(
                  sorah: sorah,
                  dotColor: Colors.grey.shade300,
                  style: AppStyles.splartMedium16(context)
                      .copyWith(color: Colors.black87),
                ),
              ],
            ),
            const Spacer(),
            Text(
              sorah.englishName,
              textDirection: TextDirection.rtl,
              style: AppStyles.kufiMedium20(context)
                  .copyWith(color: AppColor.deepPurple),
            ),
          ],
        ),
      ),
    );
  }
}
