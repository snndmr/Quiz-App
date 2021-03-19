import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _score = 0;

  void _resetQuiz() {
    setState(() {
      _index = 0;
      _score = 0;
    });
  }

  void _answerQuestion(int score) {
    _score += score;
    setState(() {
      _index += 1;
    });
  }

  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Yellow', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 2}
      ]
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Bear', 'score': 10},
        {'text': 'Bee', 'score': 8},
        {'text': 'Chicken', 'score': 6},
        {'text': 'Cat', 'score': 4},
        {'text': 'Dog', 'score': 2}
      ]
    },
    {
      'question': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Remzi', 'score': 10},
        {'text': 'Fadi', 'score': 5},
        {'text': 'Fatih', 'score': 0},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 192, 108, 132),
                Color.fromARGB(255, 108, 91, 123),
                Color.fromARGB(255, 53, 92, 125),
              ],
            ),
          ),
          child: _index < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  index: _index)
              : Result(_score, _resetQuiz),
        ),
      ),
    );
  }
}
