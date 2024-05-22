import 'package:quran_app/core/services/api_service.dart';
import 'package:quran_app/features/moshaf/data/repos/quran_repo.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';

class QuranRepoImpl implements QuranRepo {
  final ApiService _apiService;

  QuranRepoImpl(this._apiService);
  @override
  Future<List<SorahModel>> featchQuran() async {
    try {
      List<dynamic> jsonData = await _apiService.get('assets/json/quran.json');
      var tafseerJsonData = await _apiService.get('assets/json/tafseer.json');

      List<SorahModel> sorahList = [];
      for (int i = 0; i < jsonData.length; i++) {
        sorahList
            .add(SorahModel.fromJson(jsonData[i], tafseerJsonData[i]['ayahs']));
      }
      print(sorahList);
      return sorahList;
    } on Exception catch (e) {
      return [];
    }
  }
}
