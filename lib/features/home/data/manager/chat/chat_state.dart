part of 'chat_cubit.dart';

sealed class ChatState {}

final class ChatInitial extends ChatState {}

final class ChatLoading extends ChatState {}

final class ChatSuccess extends ChatState {}

final class ChatFailure extends ChatState {
  final String errorMessage;

  ChatFailure({required this.errorMessage});
}
