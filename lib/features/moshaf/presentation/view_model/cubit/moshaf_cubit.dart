import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/moshaf/data/repos/quran_repo.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';

part 'moshaf_state.dart';

class MoshafCubit extends Cubit<MoshafState> {
  MoshafCubit(this.quranRepo) : super(MoshafInitial());
  int currentPage = -1;
  final QuranRepo quranRepo;
  void featchQuran() async {
    emit(MoshafLoading());
    List<SorahModel>? sorahList = await quranRepo.featchQuran();
    if (sorahList == null) {
      emit(MoshafFailure());
    } else {
      emit(MoshafSuccess(sorahList));
    }
  }

  // bool isANewPage(int pageNumber) {
  //   if (pageNumber != currentPage) {
  //     currentPage = pageNumber;
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}
