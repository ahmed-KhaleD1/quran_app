import 'package:quran_app/core/models/azkar_model/all_azkar_model.dart';
import 'package:quran_app/core/models/azkar_model/azkar_data_model.dart';
import 'package:quran_app/core/models/azkar_model/azkar_item_model.dart';

abstract class AzkarState {}

class AzkarInitial extends AzkarState {}

class AzkarLoading extends AzkarState {}

class AzkarFailure extends AzkarState {
  final String errMessage;

  AzkarFailure(this.errMessage);
}

class AzkarSuccess extends AzkarState {
  final List<AzkarItemModel> azkarItemModel;

  AzkarSuccess(this.azkarItemModel);
}
