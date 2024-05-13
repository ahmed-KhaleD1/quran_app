import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:quran_app/core/utils/app_strings.dart';
import 'package:quran_app/features/home/data/models/prayer_models.dart';
import 'package:quran_app/features/home/presentation/view_model/home_state.dart';
import 'package:adhan/adhan.dart';
import 'package:quran_app/features/home/presentation/widgets/home_view_body.dart';
import 'package:quran_app/main.dart';

class Homecubit extends Cubit<Homestate> {
  Homecubit() : super(HomeInitialState());

  Location location = Location();
  late PrayerModel prayerModel;
  Widget currentScreen = const HomeViewBody();
  int currentTap = 3;
  String appbarTitle = AppStrings.homeAppBarTitle;
  Future<void> getPrayerTimes() async {
    emit(PrayertimeLoading());
    try {
      final params = CalculationMethod.karachi.getParameters();
      params.madhab = Madhab.hanafi;
      Coordinates myCoordinates = await getCoordinates();
      final prayerTimes = PrayerTimes.today(myCoordinates, params);
      prayerModel = PrayerModel.fromPrayerTimesModel(prayerTimes);
      emit(PrayertimeSuccess());
    } on Exception catch (e) {
      emit(PrayertimeFailure(message: e.toString()));
    }
  }

  Future<Coordinates> getCoordinates() async {
    LocationData currentLocation;
    if (isLocationEnabled) {
      currentLocation = await location.getLocation();
      return Coordinates(currentLocation.latitude!, currentLocation.longitude!);
    }
    return Coordinates(0, 0);
  }

  void updateCurrentPage(
      {required Widget currentPage,
      required int index,
      required String appbarTitle}) {
    currentScreen = currentPage;
    currentTap = index;
    this.appbarTitle = appbarTitle;
    emit(CurrentPageState());
  }
}
