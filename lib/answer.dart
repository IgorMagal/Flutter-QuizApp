import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        //width: double.infinity,
        margin: EdgeInsets.all(2),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black87),
                foregroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: selectHandler,
            child: Text(answerText)));
  }
}
