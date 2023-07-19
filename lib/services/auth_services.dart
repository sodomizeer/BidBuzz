import 'package:bidbuzz/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bidbuzz/main.dart';

import '../HomePage.dart';

class auth_services extends StatelessWidget {
  const auth_services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //if user logged in
          if (snapshot.hasData) {
            return HomePage();
          } //if users havent logged in
          else {
            return sign_in();
          }
        },
      ),
    );
  }
}



























