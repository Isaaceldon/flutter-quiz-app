class QuizQuestion {
  const QuizQuestion({required this.text, required this.answers});
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;}
}
