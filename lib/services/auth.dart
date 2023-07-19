//import 'dart:html';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class auth {
  //google sign in
  signInWithGoogle() async {
    //begin sign in process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    //fetching authorization details from
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    //create credentials for user
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    //signing in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
