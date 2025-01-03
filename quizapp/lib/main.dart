import 'package:flutter/material.dart';
import 'package:quizapp/quizPage.dart';
import 'package:quizapp/widgets.dart';

void main() {
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StartPage());
  }
}

class StartPage extends StatelessWidget {
  // const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar("Startseite"),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text("Willkommen in der Quiz App!",
            style: headerTextStyle(),),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizPage()));
                },
                child: Text("Quiz starten")
            ),
            Spacer(flex: 2,),
          ],
        )));
  }

// void function1() {}
}
