import 'package:quran_app/core/models/azkar_model/all_azkar_model.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';

abstract class AzkarRepo {
  Future<Map<String, AllAzkarModel>> featchAzkar();
}
