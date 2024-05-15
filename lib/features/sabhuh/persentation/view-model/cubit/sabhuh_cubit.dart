import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:quran_app/core/databases/cache/cache_helper.dart';
import 'package:quran_app/core/models/azkar_model/all_azkar_model.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';
import 'package:quran_app/core/services/service_locator.dart';
import 'package:quran_app/core/utils/shared_preference_keys.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo.dart';

part 'sabhuh_state.dart';

class SabhuhCubit extends Cubit<SabhuhState> {
  SabhuhCubit(this.azkarRepo) : super(SabhuhInitial());
  final AzkarRepo azkarRepo;
  late int currentTasbihCount = 0;
  int currentTasbihIndex = 0;
  late AllAzkarModel allAzkarModel;
  late AzkarDataModel tasbihModel;
  late int dailyTasbihCount;
  CacheHelper cacheHelper = getIt.get<CacheHelper>();
  String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  List<int>? totalTasbihCountList;
  bool enableAutoReplacement = getIt
          .get<CacheHelper>()
          .getData(key: SharedPreferencesKey.autoReplacementKey) ??
      false;
  bool autoResetTasbihCounter = getIt
          .get<CacheHelper>()
          .getData(key: SharedPreferencesKey.autotasbihCountKey) ??
      false;
  int autoReplacementCounter = 0;

  void featchTasbihData() async {
    emit(SabhuhLoading());
    getCacheData();
    Map<String, AllAzkarModel> azkar = await azkarRepo.featchAzkar();

    if (azkar.isNotEmpty) {
      allAzkarModel = azkar['تسابيح']!;
      tasbihModel = allAzkarModel.azkarList[currentTasbihIndex];
      totalTasbihCountList = totalTasbihCountList ??
          List.generate(allAzkarModel.azkarList.length, (index) => 0);
      emit(SabhuhSuccess());
    } else {
      emit(const SabhuhFaliure("حدث خطأ ما"));
    }
  }

  void getCacheData() {
    currentTasbihCount =
        cacheHelper.getData(key: SharedPreferencesKey.currentTasbihCount) ?? 0;
    dailyTasbihCount =
        cacheHelper.getData(key: SharedPreferencesKey.dailyCount) ?? 0;
    dailyTasbihCount =
        cacheHelper.getData(key: SharedPreferencesKey.currentDay) ==
                formattedDate
            ? dailyTasbihCount
            : 0;
    cacheHelper.put(key: SharedPreferencesKey.currentDay, value: formattedDate);
    totalTasbihCountList = (cacheHelper.getData(
            key: SharedPreferencesKey.totalTasbihCount) as List<Object?>)
        .map((e) => int.parse(e.toString()))
        .toList();
  }

  void nextTasbih() {
    updateCurrentTasbihIndex(
        (currentTasbihIndex + 1) % allAzkarModel.azkarList.length);
  }

  void previousTasbih() {
    int newIndex = (currentTasbihIndex - 1) < 0
        ? allAzkarModel.azkarList.length - 1
        : (currentTasbihIndex - 1);
    updateCurrentTasbihIndex(newIndex);
  }

  void updateCurrentTasbihIndex(int newIndex) {
    currentTasbihIndex = newIndex;
    tasbihModel = allAzkarModel.azkarList[newIndex];
    emit(UpdateCurrentTasbihIndex());
  }

  void updateEnableAutoReplacement() {
    enableAutoReplacement = !enableAutoReplacement;
    getIt.get<CacheHelper>().put(
        key: SharedPreferencesKey.autoReplacementKey,
        value: enableAutoReplacement);

    emit(EnableAutoReplacement());
  }

  void updateAutoresetTasbihCounter() {
    autoResetTasbihCounter = !autoResetTasbihCounter;
    getIt.get<CacheHelper>().put(
        key: SharedPreferencesKey.autotasbihCountKey,
        value: autoResetTasbihCounter);
    emit(UpdateAutoresetTasbihCounter());
  }

  void updateTotalTasbihCount({int? newValue}) {
    if (newValue == null) {
      dailyTasbihCount++;
      cacheHelper.put(
          key: SharedPreferencesKey.dailyCount, value: dailyTasbihCount);
      totalTasbihCountList![currentTasbihIndex]++;
    }
    currentTasbihCount = newValue ?? currentTasbihCount + 1;
    autoReplacementMode(newValue);
    cacheHelper.put(
        key: SharedPreferencesKey.currentTasbihCount,
        value: currentTasbihCount);

    cacheHelper.put(
        key: SharedPreferencesKey.totalTasbihCount,
        value: totalTasbihCountList!.map((value) => value.toString()).toList());
    emit(UpdateTotalTasbihCount());
  }

  void autoReplacementMode(int? newValue) {
    if (enableAutoReplacement && newValue == null) {
      autoReplacementCounter++;
      if (autoReplacementCounter >=
          int.parse(allAzkarModel.azkarList[currentTasbihIndex].count!)) {
        nextTasbih();
        autoReplacementCounter = 0;
        if (autoResetTasbihCounter) {
          currentTasbihCount = 0;
        }
      }
    }
    if (newValue == 0) {
      autoReplacementCounter = 0;
    }
  }
}
