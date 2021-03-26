import 'package:app1/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(App1());

class App1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _App1State();
  }
}

class _App1State extends State<App1> {
  final _questions = const [
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
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length)
      print('We have more questions!');
    else
      print('No more questions!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('App1 Menu'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questionIndex: _questionIndex,
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                  )
                : Result()));
  }
}
