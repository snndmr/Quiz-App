import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(100, 10, 100, 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black, // background
          onPrimary: Colors.white, // foreground
        ),
        child: Text(
          answer,
          style: TextStyle(fontSize: 18),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
