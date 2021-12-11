import 'package:flutter/material.dart';

import '../components/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final questions =  <String>[
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

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
            const SizedBox(height: 20),
            Question(questions[_questionIndex]),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              child: Text('Answer 1'),
            ),
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