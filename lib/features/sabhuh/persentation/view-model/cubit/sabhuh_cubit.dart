import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/models/azkar_model/all_azkar_model.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo.dart';

part 'sabhuh_state.dart';

class SabhuhCubit extends Cubit<SabhuhState> {
  SabhuhCubit(this.azkarRepo) : super(SabhuhInitial());
  final AzkarRepo azkarRepo;
  int totalTasbihCount = 0;
  int currentTasbihIndex = 0;
  late AllAzkarModel allAzkarModel;
  late AzkarDataModel tasbihModel;

  void featchTasbih() async {
    emit(SabhuhLoading());
    Map<String, AllAzkarModel> azkar = await azkarRepo.featchAzkar();

    if (azkar.isNotEmpty) {
      allAzkarModel = azkar['تسابيح']!;
      tasbihModel = allAzkarModel.azkarList[currentTasbihIndex];
      emit(SabhuhSuccess());
    } else {
      emit(const SabhuhFaliure("حدث خطأ ما"));
    }
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

  void updateTotalTasbihCount({int? newValue}) {
    totalTasbihCount = newValue ?? totalTasbihCount + 1;
    emit(UpdateTotalTasbihCount());
  }
}
