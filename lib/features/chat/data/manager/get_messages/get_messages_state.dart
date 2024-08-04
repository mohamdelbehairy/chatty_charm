part of 'get_messages_cubit.dart';

sealed class GetMessagesState {}

final class GetMessagesInitial extends GetMessagesState {}

final class GetMessagesLoading extends GetMessagesState {}

final class GetMessagesSuccess extends GetMessagesState {}

final class GetMessagesFailure extends GetMessagesState {
  final String errorMessage;

  GetMessagesFailure({required this.errorMessage});
}
