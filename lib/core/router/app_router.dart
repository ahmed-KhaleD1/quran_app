import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/services/service_locator.dart';
import 'package:quran_app/core/models/azkar_model/all_azkar_model.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';
import 'package:quran_app/core/models/azkar_model/azkar_item_model.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo_impl.dart';
import 'package:quran_app/features/azkar/presentation/view/azkar_details_view.dart';
import 'package:quran_app/features/azkar/presentation/view/azkar_view.dart';
import 'package:quran_app/features/azkar/presentation/view_model/azkar_cubit.dart';
import 'package:quran_app/features/home/presentation/view_model/home_cubit.dart';
import 'package:quran_app/features/home/presentation/views/home_view.dart';
import 'package:quran_app/features/moshaf/data/repos/quran_repo_impl.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';
import 'package:quran_app/features/moshaf/presentation/view/sorah_view.dart';
import 'package:quran_app/features/moshaf/presentation/view_model/cubit/moshaf_cubit.dart';
import 'package:quran_app/features/onboarding/persentation/views/onboarding_view.dart';
import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/splash/persentation/view/spalsh_view.dart';

abstract class AppRouter {
  static const String splashView = '/';
  static const String onboardingView = '/onboardingView';
  static const String homeView = '/homeView';
  static const String sorahView = '/sorahView';
  static const String azkarDetailsView = '/azkarDetailsView';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: splashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: onboardingView,
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => Homecubit()),
          BlocProvider(
              create: (context) =>
                  AzkarCubit(getIt.get<AzkarRepoImpl>())..featchAzkar()),
          BlocProvider(
            create: (context) =>
                MoshafCubit(getIt.get<QuranRepoImpl>())..featchQuran(),
          ),
          BlocProvider(
            create: (context) =>
                SabhuhCubit(getIt.get<AzkarRepoImpl>())..featchTasbihData(),
          )
        ],
        child: const HomeView(),
      ),
    ),
    GoRoute(
      path: sorahView,
      builder: (context, state) => SorahView(sorah: state.extra as SorahModel),
    ),
    GoRoute(
      path: azkarDetailsView,
      builder: (context, state) => AzkarDetailsView(
        azkar: state.extra as AzkarItemModel,
      ),
    ),
  ]);
}
