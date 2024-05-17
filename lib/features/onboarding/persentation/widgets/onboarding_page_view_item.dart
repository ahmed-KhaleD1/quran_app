import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/features/onboarding/data/onboarding_model.dart';

class OnboardingPageViewItem extends StatelessWidget {
  const OnboardingPageViewItem(
      {super.key, required this.item, required this.currentPageIndex});
  final OnboardingModel item;
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Image.asset(
              item.image,
            ),
          ),
        ),
        const SizedBox(height: 32),
        Text(
          item.title,
          style: AppStyles.kufiBold28(context),
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            item.subTitle,
            style: AppStyles.kufiMedium16(context),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
