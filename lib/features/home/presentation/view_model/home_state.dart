import 'package:quran_app/features/home/data/models/prayer_models.dart';

abstract class HomeState {
  const HomeState();
}

class HomeInitialState extends HomeState {}

class PrayertimeLoading extends HomeState {}

class PrayertimeSuccess extends HomeState {
  final PrayerModel prayerModel;

  const PrayertimeSuccess({required this.prayerModel});
}

class PrayertimeFailure extends HomeState {
  final String message;
  PrayertimeFailure({required this.message});
}

class CurrentPageState extends HomeState {}
