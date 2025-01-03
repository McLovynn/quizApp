import 'package:flutter/material.dart';
import 'package:quizapp/widgets.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  int currentLevel = 1;

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
                  "Hier steht die Frage",
                  style: headerTextStyle(),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text("Aktuelles Level",
                style: normalTextStyle(),
                ),
                StepProgressIndicator(
                  totalSteps: 10,
                  currentStep: currentLevel,
                  selectedColor: Colors.teal,
                  unselectedColor: Colors.black,
                ),
                Spacer(),
                answerCard("1", context),
                answerCard("2", context),
                answerCard("3", context),
                answerCard("4", context),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
