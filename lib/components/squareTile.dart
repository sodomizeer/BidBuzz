import 'package:flutter/material.dart';
import 'package:bidbuzz/sign_in.dart';

class squareTile extends StatelessWidget {
  final String imagePath;
  const squareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        imagePath,
        height: 50,
      ),
    );
  }
}
