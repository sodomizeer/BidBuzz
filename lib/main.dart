import 'package:bidbuzz/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:bidbuzz/sign_in.dart';
//import '';
import 'firebase_options.dart';
//import '';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'BidBuzz',
      //theme: ThemeData(

      //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //useMaterial3: true,
      //),
      home: auth_services(),
    );
  }
}
