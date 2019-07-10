import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion(){
    print('Answer chosen');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text('The Question?'),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            
            RaisedButton(
              child: Text('Answer2'),
              onPressed: answerQuestion,
            ),
            
            RaisedButton(
              child: Text('Answer3'),
              onPressed: () => answerQuestion(),
            )
          ],
        ),
      ),
    );
  }
}
