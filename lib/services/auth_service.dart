import 'package:firebase_auth/firebase_auth.dart';
import 'package:cars_test_app/domain/user.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserA?> SignInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return UserA.fromFirebase(user!);
    } catch (error) {
      return null;
    }
  }

  Future logOut() async{
    await _firebaseAuth.signOut();
  }

}

