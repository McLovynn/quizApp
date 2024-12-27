import 'package:flutter/material.dart';

void main() {
  runApp(StartPage());
}

class StartPage extends StatelessWidget {
  // const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueAccent,
      appBarTheme: AppBarTheme(
        color: Colors.blueAccent,
      )),

      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: Center(child: Text("Willkommen in der Quiz App!")),
      ),
    );
  }
}
