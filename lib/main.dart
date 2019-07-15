import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 20},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 12},
        {'text': 'Snake', 'score': 27},
        {'text': 'Elephant', 'score': 49},
        {'text': 'Tengu', 'score': 1}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 4},
        {'text': 'Ben', 'score': 5},
        {'text': 'Sruntul', 'score': 3},
        {'text': 'Jangkrik', 'score': 2}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _totalScore +=score;
      _questionIndex += 1;
      print('Answer chosen');
    });
  }
  void _resetQuiz(){
    setState(() {
      _totalScore = 0;
      _questionIndex = 0; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
