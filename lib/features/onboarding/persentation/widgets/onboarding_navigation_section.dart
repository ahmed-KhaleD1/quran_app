import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran_app/core/databases/cache/cache_helper.dart';
import 'package:quran_app/core/functions/navigation.dart';
import 'package:quran_app/core/router/app_router.dart';
import 'package:quran_app/core/services/service_locator.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/shared_preference_keys.dart';
import 'package:quran_app/core/widgets/buttons/custom_floating_action_button.dart';
import 'package:quran_app/core/widgets/custom_dots_indicator.dart';

class OnboardingNavigationSection extends StatelessWidget {
  const OnboardingNavigationSection({
    super.key,
    required this.currentPageIndex,
    required this.pageController,
  });

  final int currentPageIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomdotsIndicator(currentPageIndex: currentPageIndex),
          CustomFloationgActionButton(
              onPressed: () {
                if (currentPageIndex == 2) {
                  getIt<CacheHelper>().put(
                      key: SharedPreferencesKey.isOnBaordingVisited,
                      value: true);
                  customReplacementNav(context, path: AppRouter.homeView);
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.decelerate,
                  );
                }
              },
              color: AppColor.deepPurple,
              iconData: currentPageIndex == 2
                  ? FontAwesomeIcons.flag
                  : FontAwesomeIcons.chevronLeft),
        ],
      ),
    );
  }
}
