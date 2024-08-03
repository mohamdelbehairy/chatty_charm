import 'package:chatty_charm/core/utils/service/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  final authService = AuthService();

  Future<void> register(
      {required String email, required String password}) async {
    emit(RegisterLoading());
    try {
      var userCredential =
          await authService.register(email: email, password: password);
      if (userCredential.user != null) {
        debugPrint('${userCredential.user?.email}');
        emit(RegisterSuccess());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterFailure(errorMessage: 'weak-password'));
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterFailure(errorMessage: 'email-already-in-use'));
      }
    } catch (e) {
      emit(RegisterFailure(errorMessage: e.toString()));
      debugPrint('error from register method: $e');
    }
  }
}
