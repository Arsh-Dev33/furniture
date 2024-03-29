import 'package:flutter/material.dart';

class TextNormal extends StatelessWidget {
  String text;

  TextNormal({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}
