import 'package:quran_app/core/models/azkar_model/all_azkar_model.dart';
import 'package:quran_app/core/models/azkar_model/azkar_item_model.dart';

abstract class DoaaState {}

class DoaaInitial extends DoaaState {}

class DoaaLoading extends DoaaState {}

class DoaaFailure extends DoaaState {
  final String errMessage;

  DoaaFailure(this.errMessage);
}

class DoaaSuccess extends DoaaState {
  final List<AzkarItemModel> azkarList;

  DoaaSuccess(this.azkarList);
}
