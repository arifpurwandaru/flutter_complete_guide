import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((ans) {
          //3 dots means spread the list into single component to avoid nested list
          return Answer(()=>answerQuestion(ans['score']), ans['text']);
        }).toList()
      ],
    );
  }
}
