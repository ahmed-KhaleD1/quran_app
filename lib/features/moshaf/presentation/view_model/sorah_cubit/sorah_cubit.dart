import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/ayah.dart';

part 'sorah_State.dart';

class SorahCubit extends Cubit<SorahState> {
  SorahCubit() : super(SorahInitial());

  List<List<Ayah>> getAyahListInPage(List<Ayah> ayahList) {
    int initialPage = ayahList[0].page!, startIndex = 0;
    List<List<Ayah>> ayahListInPage = [];
    for (int i = 0; i < ayahList.length; i++) {
      if (ayahList[i].page != initialPage) {
        ayahListInPage.add(ayahList.sublist(startIndex, i));
        startIndex = i;
        initialPage = ayahList[i].page!;
      }
      if (i == ayahList.length - 1) {
        ayahListInPage.add(ayahList.sublist(startIndex, i + 1));
      }
    }
    return ayahListInPage;
  }
}
