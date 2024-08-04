import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/utils/service/delete_messages_service.dart';

part 'delete_account_state.dart';

class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  DeleteAccountCubit() : super(DeleteAccountInitial());

  final _deleteMessagesService = DeleteMessagesService();
  Future<void> deleteUser() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('storeUser', FirebaseAuth.instance.currentUser!.uid);
    prefs.remove('userID');
    var user = FirebaseAuth.instance.currentUser;
    await user?.delete();
  }

  Future<void> deleteUserInfo({required String? userID}) async {
    await FirebaseFirestore.instance.collection('user').doc(userID).delete();
  }

  Future<void> deleteAccount() async {
    emit(DeleteAccountLoading());
    try {
      await _deleteMessagesService.deleteMessages();
      await deleteUser();
      emit(DeleteAccountSuccess());
    } catch (e) {
      emit(DeleteAccountFailure(errorMessage: e.toString()));
      debugPrint('error from deleteAccount method: $e');
    }
  }
}
