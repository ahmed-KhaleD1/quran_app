import 'package:quran_app/core/services/api_service.dart';
import 'package:quran_app/features/moshaf/data/repos/quran_repo.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';

class QuranRepoImpl implements QuranRepo {
  final ApiService _apiService;

  QuranRepoImpl(this._apiService);
  @override
  Future<List<SorahModel>> featchQuran() async {
    try {
      var jsonData = await _apiService.get('assets/json/quran.json');
      List<SorahModel> sorahList = [];
      for (var item in jsonData) {
        sorahList.add(SorahModel.fromJson(item));
      }
      print(sorahList);
      return sorahList;
    } on Exception catch (e) {
      return [];
    }
  }
}
