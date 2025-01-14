import 'package:flutter/material.dart';
import 'package:quizapp/layout/widgets.dart';
import 'package:quizapp/logic/questionController.dart';
import 'package:quizapp/logic/questions.dart';
import 'package:quizapp/model/quizModel.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentLevel = 1;
  late QuizModel currentQuestion;
  late List<String> answers;
  late List<int> questionIndex;

  @override
  void initState() {
    super.initState();
    questionIndex = getRandomQuestionIndex(11);
    loadNewQuestion();
  }

  loadNewQuestion() {
    currentQuestion = loadQuestion(questionIndex[currentLevel - 1]);
    answers = getRandomQuestionList(
        currentQuestion.wrongAnswers, currentQuestion.correctAnswer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Quiz"),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background2.jpg"),
                fit: BoxFit.fitHeight)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  currentQuestion.question,
                  style: headerTextStyle(),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  "Aktuelles Level",
                  style: normalTextStyle(),
                ),
                StepProgressIndicator(
                  totalSteps: 10,
                  currentStep: currentLevel,
                  selectedColor: Colors.teal,
                  unselectedColor: Colors.red,
                ),
                Spacer(),
                answerCard(answers[0], context),
                answerCard(answers[1], context),
                answerCard(answers[2], context),
                answerCard(answers[3], context),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
