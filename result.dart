import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrease {
    String text = 'You did it!';

    if (resultScore <= 8) {
      text += '\nYou are awesome and innocent';
    } else if (resultScore <= 12) {
      text += '\nPretty likeable';
    } else if (resultScore <= 16) {
      text += '\nYou are ... strange?!';
    } else {
      text += '\nYou are so bad';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 300),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrease,
              style: TextStyle(fontSize: 36),
              textAlign: TextAlign.center,
            ),
            TextButton(
              child: Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 36, color: Colors.white),
              ),
              onPressed: resetHandler,
            ),
          ],
        ),
      ),
    );
  }
}
