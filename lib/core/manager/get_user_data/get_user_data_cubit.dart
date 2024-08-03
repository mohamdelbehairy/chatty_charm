import 'package:chatty_charm/features/user_data/data/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_user_data_state.dart';

class GetUserDataCubit extends Cubit<GetUserDataState> {
  GetUserDataCubit() : super(GetUserDataInitial());

  List<UserModel> user = [];

  void getUserData() async {
    
    try {
      FirebaseFirestore.instance
          .collection('user')
          .snapshots()
          .listen((snapshot) {
        if (snapshot.docs.isNotEmpty) {
          user =
              snapshot.docs.map((e) => UserModel.fromJson(e.data())).toList();
          emit(GetUserDataSuccess());
        }
      });
    } catch (e) {
      emit(GetUserDataFailure(errorMesage: e.toString()));
      debugPrint('error from getUserData method: $e');
    }
  }
}
