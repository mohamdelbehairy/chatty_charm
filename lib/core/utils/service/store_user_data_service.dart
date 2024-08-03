import 'package:chatty_charm/features/user_data/data/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StoreUserDataService {
  Future<void> storeUserData({required UserModel userModel}) async {
    await FirebaseFirestore.instance
        .collection('user')
        .doc(userModel.userID)
        .set(userModel.tojson());
  }
}
