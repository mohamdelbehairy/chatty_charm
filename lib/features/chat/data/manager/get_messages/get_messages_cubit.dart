import 'package:chatty_charm/core/models/message_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_messages_state.dart';

class GetMessagesCubit extends Cubit<GetMessagesState> {
  GetMessagesCubit() : super(GetMessagesInitial());

  List<MessageModel> messages = [];
  void getMessages() {
    emit(GetMessagesLoading());
    try {
      FirebaseFirestore.instance
          .collection('chats')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('chats')
          .orderBy('dataTime', descending: true)
          .snapshots()
          .listen((snapshot) {
        messages = [];
        for (var elment in snapshot.docs) {
          messages.add(MessageModel.fromJson(elment.data()));
        }
        emit(GetMessagesSuccess());
      });
    } catch (e) {
      emit(GetMessagesFailure(errorMessage: e.toString()));
      debugPrint('error from getMessages method: $e');
    }
  }
}
