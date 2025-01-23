import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(String title) {
  return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white70,
      title: Text(title, style: TextStyle(color: Colors.teal)));
}

Widget answerCard(String text, BuildContext context, {bool? answer}) {
  return Container(
    height: MediaQuery.of(context).size.width * 0.2,
    width: MediaQuery.of(context).size.width,
    child: Card(
      color: (answer == null)
          ? Colors.teal
          : (answer)
              ? Colors.green
              : Colors.red,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      elevation: 5,
      // color: Colors.teal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}

TextStyle headerTextStyle({Color color = Colors.black}) {
  return TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.bold);
}

TextStyle normalTextStyle({Color color = Colors.black}) {
  return TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.normal);
}
