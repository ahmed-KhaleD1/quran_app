import 'package:flutter/material.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';

class SorahInfoRow extends StatelessWidget {
  const SorahInfoRow({
    super.key,
    required this.sorah,
    required this.style,
    required this.dotColor,
  });

  final SorahModel sorah;
  final Color dotColor;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          sorah.revelationType == 'Meccan' ? 'مكيه' : 'مدنية',
          style: style,
        ),
        Container(
          height: 8,
          width: 8,
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(shape: BoxShape.circle, color: dotColor),
        ),
        Text(
          'آياتها ${sorah.ayahs!.length.toString()} آيه',
          style: style,
        ),
      ],
    );
  }
}
