part of 'moshaf_cubit.dart';

sealed class MoshafState {
  const MoshafState();
}

final class MoshafInitial extends MoshafState {}

final class MoshafLoading extends MoshafState {}

final class MoshafSuccess extends MoshafState {
  final List<SorahModel> sorahList;

  MoshafSuccess(this.sorahList);
}

final class MoshafFailure extends MoshafState {}
