import 'package:firebase_auth/firebase_auth.dart';

class UserA {
  String? id;

  UserA.fromFirebase(User user){
    id = user.uid;
  }
}