import 'package:get_it/get_it.dart';
import 'package:quran_app/core/databases/cache/cache_helper.dart';
import 'package:quran_app/core/services/api_service.dart';
import 'package:quran_app/core/services/location_service.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo_impl.dart';
import 'package:quran_app/features/moshaf/data/repos/quran_repo_impl.dart';

final GetIt getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<LocationService>(LocationService());
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<QuranRepoImpl>(QuranRepoImpl(getIt<ApiService>()));
  getIt.registerSingleton<AzkarRepoImpl>(AzkarRepoImpl(getIt<ApiService>()));
}
