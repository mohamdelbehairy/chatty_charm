import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final bool isUser;
  final String message;
  final DateTime? dataTime;
  final String? messageID;

  MessageModel(
      {required this.isUser,
      required this.message,
      this.dataTime,
      this.messageID});

  factory MessageModel.fromJson(jsonData) {
    return MessageModel(
      isUser: jsonData['isUser'] ?? false,
      message: jsonData['message'] ?? "",
      dataTime: jsonData['date'] != null
          ? (jsonData['dataTime'] as Timestamp).toDate()
          : null,
      messageID: jsonData['messageID'],
    );
  }

  tojson() {
    return {
      "isUser": isUser,
      "message": message,
      "dataTime": dataTime,
      "messageID": messageID    
    };
  }
}
