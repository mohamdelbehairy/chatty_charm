part of 'store_user_data_cubit.dart';

sealed class StoreUserDataState {}

final class StoreUserDataInitial extends StoreUserDataState {}

final class StoreUserDataLoading extends StoreUserDataState {}

final class StoreUserDataSuccess extends StoreUserDataState {}

final class StoreUserDataFailure extends StoreUserDataState {
  final String errorMessage;

  StoreUserDataFailure({required this.errorMessage});
}
