import 'package:location/location.dart';

class LocationService {
  static Location location = Location();

  Future<bool> checkAndRequestLocationService() async {
    var isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
      if (!isServiceEnabled) {
        return false;
      }
    }
    return true;
  }

  Future<bool> checkAndRequestLocationPermission() async {
    var permissionState = await location.hasPermission();
    if (permissionState == PermissionStatus.deniedForever) {
      return false;
    }
    if (permissionState == PermissionStatus.denied) {
      permissionState = await location.requestPermission();
      return permissionState == PermissionStatus.granted;
    }
    return true;
  }
}
