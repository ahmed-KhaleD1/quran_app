import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/utils/api_keys.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/models/azkar_model/all_azkar_model.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';
import 'package:quran_app/core/models/azkar_model/azkar_item_model.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo.dart';
import 'package:quran_app/features/azkar/presentation/view_model/azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit(this.azkarRepo) : super(AzkarInitial());
  final AzkarRepo azkarRepo;
  void featchAzkar() async {
    emit(AzkarLoading());
    Map<String, AllAzkarModel> azkar = await azkarRepo.featchAzkar();

    List<AzkarItemModel> azkarItem = [];
    for (String key in ApiKeys.azkarKeys) {
      azkarItem.add(AzkarItemModel(
          backgroundColor: AppColor.azkarBackgroundColors[key]!,
          title: key,
          azkar: azkar[key]!,
          image: Assets.azkarImageList[key]!));
    }
    if (azkar.isNotEmpty) {
      emit(AzkarSuccess(azkarItem));
    } else {
      emit(AzkarFailure("حدث خطأ ما"));
    }
  }
}
