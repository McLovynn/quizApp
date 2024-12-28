import 'package:flutter/material.dart';
import 'package:quizapp/widgets.dart';

class QuizPage extends StatefulWidget{
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Quiz"),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hier steht die Frage"),
          answerCard("1"),
          answerCard("2"),
          answerCard("3"),
          answerCard("4")
        ],),),
    );

  }
}