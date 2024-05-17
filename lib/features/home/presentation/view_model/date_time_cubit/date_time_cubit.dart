import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:jhijri/_src/_jHijri.dart';
import 'package:quran_app/core/enums/time_period_enum.dart';
import 'package:quran_app/core/functions/convert_form%20english%20number_to%20_arbic.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/features/home/presentation/view_model/date_time_cubit/date_time_state.dart';

class DateTimeCubit extends Cubit<DateTimeState> {
  DateTimeCubit() : super(DateTimeInitial()) {
    _startTimer();
  }

  DateTime dateTime = DateTime.now();
  Timer? _timer;
  final Map<TimePeriod, String> timePeriodImageMap = {
    TimePeriod.morning: Assets.imagesHomeThePeriodOfTheDayMorning,
    TimePeriod.afternoon: Assets.imagesHomeThePeriodOfTheDayAfternoon,
    TimePeriod.evening: Assets.imagesHomeThePeriodOfTheDayEvening,
    TimePeriod.night: Assets.imagesHomeThePeriodOfTheDayNight,
    TimePeriod.noon: Assets.imagesHomeThePeriodOfTheDayNoon,
  };
  String getArabicDayOfWeek() {
    var formatter = DateFormat('EEEE', 'ar');
    return formatter.format(dateTime);
  }

  String getTimeInArabic() {
    var formatter = DateFormat.jm('ar');
    return formatter.format(dateTime);
  }

  String getGregorianCalendarInArabic() {
    var formatter = DateFormat.yMMMMd('ar');
    return formatter.format(dateTime);
  }

  String getHijriDateInArabic() {
    final HijriDate jHijri = HijriDate.now();
    final String hijriDay = convertFormEnglishNumberToArabic(jHijri.day);
    final String hijriyear = convertFormEnglishNumberToArabic(jHijri.year);
    String hijriDate = '$hijriDay ${jHijri.monthName} $hijriyear هـ';
    return hijriDate;
  }

  String getTimePeriodImage() {
    return timePeriodImageMap[getTimePeriod()]!;
  }

  TimePeriod getTimePeriod() {
    int currentHour = dateTime.hour;
    int currentMinute = dateTime.minute;

    if (currentHour >= 6 && currentHour < 12) {
      return TimePeriod.morning;
    } else if (currentHour == 12 && currentMinute >= 0 && currentMinute < 30) {
      return TimePeriod.noon;
    } else if (currentHour == 12 && currentMinute >= 30) {
      return TimePeriod.afternoon;
    } else if (currentHour >= 13 && currentHour < 18) {
      return TimePeriod.afternoon;
    } else if (currentHour >= 18 && currentHour < 21) {
      return TimePeriod.evening;
    } else {
      return TimePeriod.night;
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      dateTime = DateTime.now();
      emit(TimeUpdateState());
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
