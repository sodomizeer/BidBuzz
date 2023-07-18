import 'package:bidbuzz/components/squareTile.dart';
import 'package:bidbuzz/components/textField.dart';
import 'package:flutter/material.dart';
import 'package:bidbuzz/main.dart';
import 'package:bidbuzz/components/myButtons.dart';

class sign_in extends StatelessWidget {
  //text type
  final UsernameController = TextEditingController();
  final passwordControler = TextEditingController();

  //sign user redict
  void signUserIn() {}

  sign_in({
    super.key,
  });

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
                  size: 100,
                ),
              ),

              //Welcome text
              // const SizedBox(
              //  height: 0,
              //),
              Text(
                'Welcome to IPL Auction',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
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
              const Column(
                children: [squareTile(imagePath: 'lib/images/1.png')],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
