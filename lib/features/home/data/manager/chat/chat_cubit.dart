import 'package:chatty_charm/core/models/message_model.dart';
import 'package:chatty_charm/core/utils/api_key.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:uuid/uuid.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());

  List<MessageModel> messages = [];

  Future<void> sendMessage({required TextEditingController controller}) async {
    emit(ChatLoading());
    try {
      final model = GenerativeModel(model: "gemini-pro", apiKey: ApiKey.apiKey);
      final message = controller.text;
      controller.clear();
      messages.add(MessageModel(
          isUser: true, message: message, dataTime: DateTime.now()));

      final content = [Content.text(message)];
      final response = await model.generateContent(content);

      messages.add(MessageModel(
          isUser: false,
          message: response.text ?? "",
          dataTime: DateTime.now()));
      
      emit(ChatSuccess());
      await storeChats(
          message: MessageModel(
              isUser: true,
              message: message,
              dataTime: DateTime.now(),
              messageID: const Uuid().v4()));
      await storeChats(
          message: MessageModel(
              isUser: false,
              message: response.text ?? "",
              dataTime: DateTime.now(),
              messageID: const Uuid().v4()));
    } catch (e) {
      emit(ChatFailure(errorMessage: e.toString()));
      debugPrint('error from send message method: $e');
    }
  }

  Future<void> storeChats({required MessageModel message}) async {
    await FirebaseFirestore.instance
        .collection('chats')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('chats')
        .doc(message.messageID)
        .set(message.tojson());
  }
}
