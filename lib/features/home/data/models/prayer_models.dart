import 'package:adhan/adhan.dart';
import 'package:intl/intl.dart';
import 'package:quran_app/features/home/data/models/prayer_time_model.dart';

class PrayerModel {
  final List<PrayerTimeModel> prayerList;

  PrayerModel({required this.prayerList});
  factory PrayerModel.fromPrayerTimesModel(PrayerTimes prayerTimes) {
    return PrayerModel(
      prayerList: [
        PrayerTimeModel(
            name: 'الفجر', time: DateFormat.jm('ar').format(prayerTimes.fajr)),
        PrayerTimeModel(
            name: 'الظهر', time: DateFormat.jm('ar').format(prayerTimes.dhuhr)),
        PrayerTimeModel(
            name: 'العصر', time: DateFormat.jm('ar').format(prayerTimes.asr)),
        PrayerTimeModel(
            name: 'المغرب',
            time: DateFormat.jm('ar').format(prayerTimes.maghrib)),
        PrayerTimeModel(
            name: 'العشاء', time: DateFormat.jm('ar').format(prayerTimes.isha)),
      ],
    );
  }
}
