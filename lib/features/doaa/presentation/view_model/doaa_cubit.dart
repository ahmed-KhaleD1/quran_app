import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/models/azkar_model/all_azkar_model.dart';
import 'package:quran_app/core/models/azkar_model/azkar_item_model.dart';
import 'package:quran_app/core/repos/azkar_repo.dart';
import 'package:quran_app/core/utils/api_keys.dart';
import 'package:quran_app/features/doaa/presentation/view_model/doaa_state.dart';

class DoaaCubit extends Cubit<DoaaState> {
  DoaaCubit(this.azkarRepo) : super(DoaaInitial());
  final AzkarRepo azkarRepo;

  void featchDoaa() async {
    emit(DoaaLoading());
    Map<String, AllAzkarModel> azkar = await azkarRepo.featchAzkar();

    List<AzkarItemModel> doaaList = [];
    for (String key in ApiKeys.doaaKeys) {
      doaaList.add(AzkarItemModel(title: key, azkar: azkar[key]!));
    }
    if (azkar.isNotEmpty) {
      emit(DoaaSuccess(doaaList));
    } else {
      emit(DoaaFailure("حدث خطأ ما"));
    }
  }
}
