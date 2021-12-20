import 'package:flutter/material.dart';
import 'package:quiz_app/components/aswer.dart';

import '../components/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const questions = <String>[
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

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
            Question(questionText: HomeScreen.questions[_questionIndex]),
            Answer(selectHandler: _answerQuestion),
            Answer(selectHandler: _answerQuestion),
            Answer(selectHandler: _answerQuestion),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex == 1 ? 0 : 1;
    });
  }
}
