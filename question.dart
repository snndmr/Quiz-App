import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(60),
      child: Text(
        question,
        style: TextStyle(fontSize: 36),
        textAlign: TextAlign.center,
      ),
    );
  }
}
