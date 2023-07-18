import 'package:flutter/material.dart';
import 'package:bidbuzz/main.dart';
import 'package:bidbuzz/sign_in.dart';

class textField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsureText;

  const textField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obsureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
            borderRadius: BorderRadius.circular(25),
          ),
          fillColor: Color.fromARGB(255, 241, 238, 238),
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
