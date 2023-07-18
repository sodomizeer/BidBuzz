import 'package:flutter/material.dart';
import 'package:bidbuzz/main.dart';
import 'package:bidbuzz/sign_in.dart';

class myButtons extends StatelessWidget {
  const myButtons({
    super.key,
    required this.onTap
    });
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(
          horizontal: 100,
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            'Sign in',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
