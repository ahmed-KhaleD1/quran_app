import 'package:quran_app/core/services/location_service.dart';
import 'package:quran_app/core/services/service_locator.dart';

Future<bool> setUpLocationService() async {
  bool serviceEnabled, permissionGranted;
  serviceEnabled =
      await getIt<LocationService>().checkAndRequestLocationService();
  permissionGranted =
      await getIt<LocationService>().checkAndRequestLocationPermission();
  return permissionGranted && serviceEnabled;
}
