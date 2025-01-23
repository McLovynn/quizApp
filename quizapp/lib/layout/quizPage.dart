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
  int userPoints = 0;
  int currentLevel = 1;
  late QuizModel currentQuestion;
  late List<String> answers;
  late List<int> questionIndex;
  List answerValidation = [null, null, null, null];

  @override
  void initState() {
    super.initState();
    questionIndex = getRandomQuestionIndex(11);
    loadNewQuestion();
  }

  loadNewQuestion() {
    setState(() {
      currentQuestion = loadQuestion(questionIndex[currentLevel - 1]);
      answers = getRandomQuestionList(
          currentQuestion.wrongAnswers, currentQuestion.correctAnswer);
          answerValidation = [null, null, null, null];
    });
  }

  validateAndShowQuestion(int userAnswerIndex) async{
    setState(() {
      int correctIndex =
      getCorrectAnswersIndex(answers, currentQuestion.correctAnswer);
      answerValidation[correctIndex] = true;
      if (userAnswerIndex == correctIndex) {
        userPoints++;
      } else {
        answerValidation[userAnswerIndex] = false;
      }
    });

    await Future.delayed(Duration(seconds: 2));
    currentLevel++;
    if (currentLevel <= 10) {
      loadNewQuestion();
    }
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
                GestureDetector(
                  child: answerCard(answers[0], context,
                      answer: answerValidation[0]),
                  onTap: () {
                    validateAndShowQuestion(0);
                  },
                ),
                GestureDetector(
                  child: answerCard(answers[1], context,
                      answer: answerValidation[1]),
                  onTap: () {
                    validateAndShowQuestion(1);
                  },
                ),
                GestureDetector(
                  child: answerCard(answers[2], context,
                      answer: answerValidation[2]),
                  onTap: () {
                    validateAndShowQuestion(2);
                  },
                ),
                GestureDetector(
                  child: answerCard(answers[3], context,
                      answer: answerValidation[3]),
                  onTap: () {
                    validateAndShowQuestion(3);
                  },
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
