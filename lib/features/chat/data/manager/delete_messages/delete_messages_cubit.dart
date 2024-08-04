import 'package:chatty_charm/core/utils/service/delete_messages_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'delete_messages_state.dart';

class DeleteMessagesCubit extends Cubit<DeleteMessagesState> {
  DeleteMessagesCubit() : super(DeleteMessagesInitial());

  final deleteMessagesService = DeleteMessagesService();
  Future<void> deleteMessages() async {
    emit(DeleteMessagesLoading());
    await deleteMessagesService.deleteMessages().then((value) {
      emit(DeleteMessagesSuccess());
    }).catchError((e) {
      emit(DeleteMessagesFailure(errorMessage: e.toString()));
      debugPrint('error from deleteMessages method: $e');
    });
  }

  Future<bool> isMessage() async {
    return await deleteMessagesService.isMessage();
  }
}
