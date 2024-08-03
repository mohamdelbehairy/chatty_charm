part of 'get_user_data_cubit.dart';

sealed class GetUserDataState {}

final class GetUserDataInitial extends GetUserDataState {}

final class GetUserDataSuccess extends GetUserDataState {}

final class GetUserDataFailure extends GetUserDataState {
  final String errorMesage;

  GetUserDataFailure({required this.errorMesage});
}
