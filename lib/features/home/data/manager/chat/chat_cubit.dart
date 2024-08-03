import 'package:chatty_charm/core/utils/constants/api_key.dart';
import 'package:chatty_charm/features/home/data/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

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
      messages.add(
          MessageModel(isUser: true, message: message, date: DateTime.now()));
      final content = [Content.text(message)];
      final response = await model.generateContent(content);

      messages.add(MessageModel(
          isUser: false, message: response.text ?? "", date: DateTime.now()));

      emit(ChatSuccess());
    } catch (e) {
      emit(ChatFailure(errorMessage: e.toString()));
      debugPrint('error from send message method: $e');
    }
  }
}
