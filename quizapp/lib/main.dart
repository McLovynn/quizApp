import 'package:flutter/material.dart';
import 'package:quizapp/quizPage.dart';

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
        appBar: AppBar(
          centerTitle: true,
            backgroundColor: Colors.white70,
            title: Text("Quiz", style: TextStyle(color: Colors.teal))),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Willkommen in der Quiz App!"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Quizpage()));
                },
                child: Text("Quiz starten"))
          ],
        )));
  }

// void function1() {}
}
