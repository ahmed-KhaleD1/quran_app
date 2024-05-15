part of 'sabhuh_cubit.dart';

abstract class SabhuhState {
  const SabhuhState();
}

class SabhuhInitial extends SabhuhState {}

class SabhuhLoading extends SabhuhState {}

class SabhuhFaliure extends SabhuhState {
  final String errMessage;

  const SabhuhFaliure(this.errMessage);
}

class SabhuhSuccess extends SabhuhState {}

class UpdateTotalTasbihCount extends SabhuhState {}

class UpdateCurrentTasbihIndex extends SabhuhState {}

class EnableAutoReplacement extends SabhuhState {}

class UpdateAutoresetTasbihCounter extends SabhuhState {}
