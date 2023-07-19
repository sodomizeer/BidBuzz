import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bidbuzz/services/auth_services.dart';
import 'package:bidbuzz/main.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  //sign out user method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: signUserOut, icon: Icon(Icons.logout_rounded))
        ],
      ),
      body: Center(
        child: Text(
          "Its time for YOYO" + user.email!,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
