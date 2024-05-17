import 'package:flutter/material.dart';
import 'package:quran_app/core/databases/cache/cache_helper.dart';
import 'package:quran_app/core/functions/navigation.dart';
import 'package:quran_app/core/router/app_router.dart';
import 'package:quran_app/core/services/service_locator.dart';
import 'package:quran_app/core/utils/app_strings.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/core/utils/shared_preference_keys.dart';
import 'package:quran_app/core/widgets/buttons/custom_skip_button.dart';
import 'package:quran_app/features/onboarding/persentation/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      appBar: AppBar(
        title: Text(
          AppStrings.appName,
          style: AppStyles.kufiBold28(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomSkipButton(
                text: 'تخطي',
                onTap: () {
                  getIt<CacheHelper>().put(
                      key: SharedPreferencesKey.isOnBaordingVisited,
                      value: true);
                  customReplacementNav(context, path: AppRouter.homeView);
                }),
          )
        ],
      ),
      body: const OnboardingViewBody(),
    );
  }
}
