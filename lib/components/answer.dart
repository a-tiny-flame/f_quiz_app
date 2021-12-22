import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({
    Key? key,
    required this.answerText,
    required this.selectHandler,
  }) : super(key: key);

  final VoidCallback selectHandler;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
