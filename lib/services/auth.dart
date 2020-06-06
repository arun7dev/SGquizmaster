import 'package:firebase_auth/firebase_auth.dart';
import 'package:sg_quiz_master/models/user.dart';

class AuthServices {
  FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebase(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Future signInEmailandPass(String email, String password) async {
    try {
      AuthResult authResult = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      FirebaseUser firebaseUser = authResult.user;
      return _userFromFirebase(firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signUpWithEmailandPassword(String email, String password) async {
    try {
      AuthResult authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser firebaseUser = authResult.user;
      return _userFromFirebase(firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
