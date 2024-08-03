import 'package:firebase_auth/firebase_auth.dart';

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

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}
