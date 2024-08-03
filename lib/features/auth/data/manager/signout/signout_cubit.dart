import 'package:chatty_charm/core/utils/service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'signout_state.dart';

class SignoutCubit extends Cubit<SignoutState> {
  SignoutCubit() : super(SignoutInitial());

  final authService = AuthService();

  Future<void> signout() async {
    emit(SignoutLoading());
    await authService.signout().then((value) {
      emit(SignoutSuccess());
    }).catchError((e) {
      emit(SignoutFailure(errorMessage: e.toString()));
      debugPrint('error from signout method: $e');
    });
  }
}
