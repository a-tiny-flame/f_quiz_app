import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({required this.questionText, Key? key}) : super(key: key);

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
