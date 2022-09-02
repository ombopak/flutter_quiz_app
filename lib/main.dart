import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s yout favorite color?',
      'answers': [
        {'text': 'Black', 'score': 6},
        {'text': 'Yellow', 'score': 5},
        {'text': 'Orange', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s yout favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Bird', 'score': 2},
        {'text': 'Fish', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s yout favorite instructor?',
      'answers': [
        {'text': 'Max1', 'score': 3},
        {'text': 'Max2', 'score': 6},
        {'text': 'Max3', 'score': 9}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is home page'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
