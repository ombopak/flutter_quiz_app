import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //final Function selectHandler; => kalau ini error pakai VoidCallback untuk panggil funtion.
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.orange, onPrimary: Colors.black),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
