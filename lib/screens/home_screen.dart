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
        child: _questionIndex < Questions.questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : const Text('You did it'),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }
}
