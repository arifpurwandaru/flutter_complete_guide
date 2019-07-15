import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('You Did It'),
          Text('Your Score is: ' + totalScore.toString()),
          FlatButton(
            child: Text('Reset Quiz..'),
            onPressed: resetQuiz,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
