import 'package:bidbuzz/components/squareTile.dart';
import 'package:bidbuzz/components/textField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bidbuzz/main.dart';
import 'package:bidbuzz/components/myButtons.dart';
import 'package:bidbuzz/services/auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class sign_in extends StatefulWidget {
  sign_in({
    super.key,
  });

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  //text type
  // ignore: non_constant_identifier_names
  final UsernameController = TextEditingController();

  final passwordControler = TextEditingController();

  //sign user redict
  void signUserIn() async {
    //loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    //trying singing in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: UsernameController.text,
        password: passwordControler.text,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);

      if (e.code == 'user-not-found') {
        //print('No User Found for that Email');
        wrongEmailMessage();
      } else if (e.code == 'wrong-password') {
        //print('The password you have entered is WRONG');
        wrongPasswordMessage();
      }
    }
    //circle close
  }

  //methods for wrong credentials
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Incorrect Email'),
        );
      },
    );
  }

  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Incorrect Password'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              //logo
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 75.0),
                child: Icon(
                  Icons.lock,
                  color: Color.fromARGB(138, 88, 13, 98),
                  size: 100,
                ),
              ),

              //Welcome text
              // const SizedBox(
              //  height: 0,
              //),
              Text(
                'Welcome to THE BidBuzz Auction',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              textField(
                controller: UsernameController,
                hintText: 'Email ID please',
                obsureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              textField(
                controller: passwordControler,
                hintText: 'Password',
                obsureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              myButtons(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 25,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue With',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  squareTile(
                      onTap: () => auth().signInWithGoogle(),
                      imagePath: 'lib/images/1.png')
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
