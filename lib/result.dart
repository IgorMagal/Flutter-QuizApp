import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  Result(this.totalScore);

  String get resultText {
    String text;
    if (totalScore < 10)
      text = 'Fail!';
    else
      text = 'Success!';
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultText,
        style: TextStyle(
            fontFamily: 'Roboto', fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
