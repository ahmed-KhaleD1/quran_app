import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/features/doaa/presentation/widgets/doaa_view_body.dart';

class DoaaView extends StatelessWidget {
  const DoaaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'أدعية',
          style: AppStyles.kufiBold24(context)
              .copyWith(color: AppColor.deepPurple),
        ),
        centerTitle: true,
      ),
      body: const DoaaVieBody(),
    );
  }
}
