import 'package:chatty_charm/core/utils/service/store_user_data_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user_model.dart';

part 'store_user_data_state.dart';

class StoreUserDataCubit extends Cubit<StoreUserDataState> {
  StoreUserDataCubit() : super(StoreUserDataInitial());

  final storeUserDataService = StoreUserDataService();
  Future<void> storeUserData({required UserModel userModel}) async {
    emit(StoreUserDataLoading());
    await storeUserDataService
        .storeUserData(userModel: userModel)
        .then((value) {
      emit(StoreUserDataSuccess());
    }).catchError((e) {
      emit(StoreUserDataFailure(errorMessage: e.toString()));
    });
  }
}
