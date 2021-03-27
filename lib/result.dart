import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;
  Result({@required this.totalScore, @required this.reset});

  String get resultText {
    String text;
    if (totalScore < 15)
      text = 'Failure!';
    else
      text = 'Success!';
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: reset,
            child: Text('Restart Quiz'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.indigo)),
          )
        ],
      ),
    );
  }
}
