import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DeleteMessagesService {
  Future<void> deleteMessages() async {
    var document = await FirebaseFirestore.instance
        .collection('chats')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('chats')
        .get();

    for (var document in document.docs) {
      await document.reference.delete();
    }
  }

  Future<bool> isMessage() async {
    var document = await FirebaseFirestore.instance
        .collection('chats')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('chats')
        .get();
    return document.docs.isNotEmpty;
  }
}
