
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

int getCorrectAnswersIndex(List<String> answers, String correctAnswer){
  for(int index = 0; index < answers.length; index++){
    if(answers[index].compareTo(correctAnswer) == 0){
      return index;
    }
  }
  return - 1;
}