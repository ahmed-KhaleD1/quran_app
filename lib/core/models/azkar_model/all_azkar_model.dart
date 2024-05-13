import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';

class AllAzkarModel {
  final List<AzkarDataModel> azkarList;

  AllAzkarModel({required this.azkarList});

  factory AllAzkarModel.fromJson(List<dynamic> jsonData) {
    return AllAzkarModel(
        azkarList: jsonData
            .map((e) => AzkarDataModel.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}
