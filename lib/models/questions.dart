class Questions {
  static const List<_Question> questions = [
    _Question(
        question: 'What\'s your favorite color?',
        answers: ['Black', 'Red', 'Green', 'White']),
    _Question(
        question: 'What\'s your favorite animal?',
        answers: ['Rabbit', 'Snake', 'Elephant', 'Lion']),
    _Question(
        question: 'What\'s your favorite instructor?',
        answers: ['Max', 'Max', 'Max', 'Max']),
  ];
}

class _Question {
  final String question;
  final List<String> answers;

  const _Question({required this.question, required this.answers});
}
