import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_strings.dart';
import 'package:quran_app/features/onboarding/data/onboarding_model.dart';
import 'package:quran_app/features/onboarding/persentation/widgets/onboarding_page_view_item.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});
  final PageController pageController;
  final List<OnboardingModel> onboardingList = const [
    OnboardingModel(
        image: Assets.imagesOnboardingManReadingQuran,
        title: AppStrings.appName,
        subTitle: AppStrings.onboardingSubTitle1),
    OnboardingModel(
        image: Assets.imagesOnboardingDarkMode,
        title: AppStrings.onboardingTitle2,
        subTitle: AppStrings.onboardingSubTitle2),
    OnboardingModel(
        image: Assets.imagesOnboardingNotifications,
        title: AppStrings.onboardingTitle3,
        subTitle: AppStrings.onboardingSubTitle3),
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      physics: const BouncingScrollPhysics(),
      itemCount: onboardingList.length,
      itemBuilder: (context, index) {
        return OnboardingPageViewItem(
          item: onboardingList[index],
          currentPageIndex: index,
        );
      },
    );
  }
}
