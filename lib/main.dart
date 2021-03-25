import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(App1());

class App1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _App1State();
  }
}

class _App1State extends State<App1> {
  final questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Cat', 'Dog', 'Lion', 'Rat'],
    },
    {
      'questionText': 'Who\'s your favourite student?',
      'answers': ['Igor', 'Igor', 'Igor', 'Igor'],
    },
  ];

  var _questionIndex = 0; // Used to control what question appear on the screen.

  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex++;
      });
      print(_questionIndex);
    } else {
      setState(() {
        _questionIndex = 0;
      });
      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('App1 Menu'),
            ),
            body: Column(
              children: [
                Question(questions[_questionIndex]['questionText']),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )));
  }
}
