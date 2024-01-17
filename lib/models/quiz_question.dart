class QuizQuestion {
  final String question;
  final List<String> answers;
  final int correctAnswer;

  const QuizQuestion({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });

  List<String> getShuffledAnswers(){
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}