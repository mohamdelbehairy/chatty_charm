import 'package:chatty_charm/core/utils/service/update_user_data_service.dart';
import 'package:chatty_charm/features/user_data/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'update_user_data_state.dart';

class UpdateUserDataCubit extends Cubit<UpdateUserDataState> {
  UpdateUserDataCubit() : super(UpdateUserDataInitial());

  final updateUserDataService = UpdateUserDataService();

  Future<void> updateUseData({required UserModel userModel}) async {
    emit(UpdateUserDataLoading());
    await updateUserDataService
        .updateUserData(userModel: userModel)
        .then((value) {
      emit(UpdateUserDataSuccess());
    }).catchError((e) {
      emit(UpdateUserDataFailure(errorMesage: e.toString()));
      debugPrint('error from updateUserData method: $e');
    });
  }
}
