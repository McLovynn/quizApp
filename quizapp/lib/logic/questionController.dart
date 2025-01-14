List<String> getRandomQuestionList(List<String> wrongAnswers, String correctAnswer) {
  wrongAnswers.add(correctAnswer);
  wrongAnswers.shuffle();
  return wrongAnswers;
}

List<int> getRandomQuestionIndex(int length){
  var list  =new List<int>.generate(length, (index) => index);
  list.shuffle();
  return list;
}