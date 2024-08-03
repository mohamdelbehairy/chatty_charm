import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/utils/service/auth_service.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final authService = AuthService();

  Future<void> login({required String email, required String password}) async {
    emit(LoginLoading());
    try {
      var userCredential =
          await authService.login(email: email, password: password);
      if (userCredential.user != null) {
        await SharedPreferences.getInstance().then((value) async {
          await value.setString('userID', userCredential.user!.uid);
        });
        emit(LoginSuccess());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        emit(LoginFailure(erroMessage: 'invalid-credential'));
        debugPrint(e.toString());
      }
    } catch (e) {
      emit(LoginFailure(erroMessage: e.toString()));
      debugPrint('error from login method: $e');
    }
  }
}
