import 'package:flutter/material.dart';

import 'components.dart';
import '../models/models.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {Key? key, required this.answerQuestion, required this.questionIndex})
      : super(key: key);

  final Function answerQuestion;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(Questions.questions[questionIndex].question),
        ...Questions.questions[questionIndex].answers
            .map(
              (answer) => Answer(
                answerText: answer.text,
                selectHandler: () => answerQuestion(answer.score),
              ),
            )
            .toList(),
      ],
    );
  }
}
