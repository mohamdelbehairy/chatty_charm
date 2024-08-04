part of 'delete_messages_cubit.dart';

sealed class DeleteMessagesState {}

final class DeleteMessagesInitial extends DeleteMessagesState {}

final class DeleteMessagesLoading extends DeleteMessagesState {}

final class DeleteMessagesSuccess extends DeleteMessagesState {}

final class DeleteMessagesFailure extends DeleteMessagesState {
  final String errorMessage;

  DeleteMessagesFailure({required this.errorMessage});
}
