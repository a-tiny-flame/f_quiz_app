import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.resultScore}) : super(key: key);

  final int resultScore;

  String get resultPhrase {
    if (resultScore <= 8) {
      return 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      return 'Pretty likeable';
    } else if (resultScore <= 16) {
      return 'You are ... strange?!';
    } else {
      return 'You are so bad!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      resultPhrase,
      style: const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
