import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sing up user
  signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required  Uint8List file,
  }) {
     
  }
}

