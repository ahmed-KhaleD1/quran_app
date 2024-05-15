import 'package:flutter/material.dart';
import 'package:quran_app/core/databases/cache/cache_helper.dart';
import 'package:quran_app/core/functions/navigation.dart';
import 'package:quran_app/core/router/app_router.dart';
import 'package:quran_app/core/services/service_locator.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/shared_preference_keys.dart';
import 'package:quran_app/core/widgets/custom_animated_icon.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    if (getIt<CacheHelper>()
            .getData(key: SharedPreferencesKey.isOnBaordingVisited) ??
        false) {
      delayedNavigation(path: AppRouter.homeView);
    } else {
      delayedNavigation(path: AppRouter.onboardingView);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomAnimatedIcon(
      iconAsset: Assets.imagesColoredMoshaf2,
    ));
  }

  void delayedNavigation({required String path}) {
    Future.delayed(
      const Duration(milliseconds: 2000),
      () {
        customReplacementNav(context, path: path);
      },
    );
  }
}
