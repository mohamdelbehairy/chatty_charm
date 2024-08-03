class MessageModel {
  final bool isUser;
  final String message;
  final DateTime date;

  MessageModel(
      {required this.isUser, required this.message, required this.date});
}
