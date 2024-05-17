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
import 'package:quran_app/core/widgets/custom_gradient_background.dart';
import 'package:quran_app/features/onboarding/persentation/widgets/onboarding_navigation_section.dart';
import 'package:quran_app/features/onboarding/persentation/widgets/onboarding_page_view.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  int currentPageIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomGradientBackground(
      child: Column(
        children: [
          Expanded(child: OnboardingPageView(pageController: pageController)),
          const SizedBox(
            height: 48,
          ),
          OnboardingNavigationSection(
              currentPageIndex: currentPageIndex,
              pageController: pageController),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
