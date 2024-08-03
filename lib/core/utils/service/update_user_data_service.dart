import 'package:chatty_charm/features/user_data/data/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UpdateUserDataService {
  Future<void> updateUserData({required UserModel userModel}) async {
    await FirebaseFirestore.instance
        .collection('user')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update(userModel.tojson());
  }
}
