import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  Future<UserCredential> register(
      {required String email, required String password}) async {
    var userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }

  Future<UserCredential> login(
      {required String email, required String password}) async {
    var userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }

  Future<void> signout() async {
    await Future.delayed(const Duration(seconds: 2));
    await SharedPreferences.getInstance().then((value) async {
      await value.remove('userID');
      await FirebaseAuth.instance.signOut();
    });
  }
}
