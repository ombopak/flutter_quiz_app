import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText;
    if (resultScore < 10) {
      resultText = ' Your Score Below 10';
    } else if (resultScore < 15) {
      resultText = ' Your Score Below 15';
    } else if (resultScore < 20) {
      resultText = 'Your Score Below 20';
    } else {
      resultText = 'Your Score Above 20';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          TextButton(
            style: TextButton.styleFrom(primary: Colors.red),
            onPressed: resetQuiz,
            child: Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
