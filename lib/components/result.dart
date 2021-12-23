import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {Key? key, required this.resultScore, required this.resetFunction})
      : super(key: key);

  final int resultScore;
  final VoidCallback resetFunction;

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: resetFunction,
          style: TextButton.styleFrom(primary: Colors.deepPurple),
          child: const Text('Restart'),
        )
      ],
    );
  }
}
