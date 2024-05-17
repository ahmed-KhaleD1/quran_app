import 'package:quran_app/core/services/api_service.dart';
import 'package:quran_app/core/models/azkar_model/all_azkar_model.dart';
import 'package:quran_app/core/repos/azkar_repo.dart';

class AzkarRepoImpl implements AzkarRepo {
  final ApiService _apiService;

  AzkarRepoImpl(ApiService apiService) : _apiService = apiService;
  @override
  Future<Map<String, AllAzkarModel>> featchAzkar() async {
    try {
      Map<String, dynamic> jsonData =
          await _apiService.get('assets/json/azkar.json');
      Map<String, AllAzkarModel> azkar = Map.fromEntries(jsonData.entries.map(
          (e) => MapEntry<String, AllAzkarModel>(
              e.key, AllAzkarModel.fromJson(e.value))));

      return azkar;
    } catch (e) {
      return {};
    }
  }
}
