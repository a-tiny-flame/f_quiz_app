class Questions {
  static const List<_Question> questions = [
    _Question(
      question: 'What\'s your favorite color?',
      answers: [
        _Answer(text: 'Black', score: 10),
        _Answer(text: 'Red', score: 5),
        _Answer(text: 'Green', score: 3),
        _Answer(text: 'White', score: 1),
      ],
    ),
    _Question(
      question: 'What\'s your favorite animal?',
      answers: [
        _Answer(text: 'Rabbit', score: 3),
        _Answer(text: 'Snake', score: 11),
        _Answer(text: 'Elephant', score: 5),
        _Answer(text: 'Lion', score: 9),
      ],
    ),
    _Question(
      question: 'What\'s your favorite instructor?',
      answers: [
        _Answer(text: 'Max', score: 1),
        _Answer(text: 'Max', score: 1),
        _Answer(text: 'Max', score: 1),
        _Answer(text: 'Max', score: 1),
      ],
    ),
  ];
}

class _Question {
  final String question;
  final List<_Answer> answers;

  const _Question({required this.question, required this.answers});
}

class _Answer {
  final String text;
  final int score;

  const _Answer({
    required this.text,
    required this.score,
  });
}
