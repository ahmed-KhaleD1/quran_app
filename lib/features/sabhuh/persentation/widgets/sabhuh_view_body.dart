import 'package:flutter/material.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/custom_painter/curve_paint.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/sabhuh_header_section.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/tasbih_preview_bloc_builder.dart';

class SabhuhViewBody extends StatelessWidget {
  const SabhuhViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SabhuhHeaderSection(),
        ),
        SizedBox(
          height: 32,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TasbihPreviewBlocBuilder(),
        ),
        Expanded(child: SabhuhPainterWidget())
      ],
    );
  }
}
