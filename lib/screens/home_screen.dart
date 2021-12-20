import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: Center(
        child: Column(
          children: [
            Question(Questions.questions[_questionIndex].question),
            ...Questions.questions[_questionIndex].answers
                .map((answer) =>
                    Answer(answerText: answer, selectHandler: _answerQuestion))
                .toList(),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      print(_questionIndex);
      _questionIndex = _questionIndex == Questions.questions.length - 1
          ? 0
          : _questionIndex + 1;
    });
  }
}
