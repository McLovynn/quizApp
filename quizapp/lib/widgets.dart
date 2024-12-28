import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(String title) {
  return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white70,
      title: Text(title, style: TextStyle(color: Colors.teal)));
}

Widget answerCard(String text){
  return Container(
    height: 60,
    width: 150,
    child: Card(
      color: Colors.teal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text),
      ),
    ),
  );
}