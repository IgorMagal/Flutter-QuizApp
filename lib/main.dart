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
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 7},
        {'text': 'Lion', 'score': 4},
        {'text': 'Rat', 'score': 1}
      ],
    },
    {
      'questionText': 'Who\'s your favourite student?',
      'answers': [
        {'text': 'Igor :)', 'score': 4},
        {'text': 'Igor :S', 'score': 3},
        {'text': 'Igor :/', 'score': 2},
        {'text': 'Igor :(', 'score': 1}
      ],
    },
  ];

  var _questionIndex = 0; // Used to control what question appear on the screen.
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
              title: Text('QuizApp'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questionIndex: _questionIndex,
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                  )
                : Result(
                    totalScore: _totalScore,
                    reset: _resetQuiz,
                  )));
  }
}
