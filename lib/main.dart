import 'package:first_app/answers.dart';
import 'package:first_app/question.dart';
import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'what\'s your favourite color?',
      'answers': [
        {'text': 'red', 'score': '10'},
        {'text': 'white', 'score': '5'},
        {'text': 'blue', 'score': '3'},
        {'text': 'green', 'score': '1'}
      ]
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': '10'},
        {'text': 'snake', 'score': '5'},
        {'text': 'Dog', 'score': '3'},
        {'text': 'Lion', 'score': '1'}
      ]
    },
    {
      'questionText': 'what\'s your favourite player?',
      'answers': [
        {'text': 'Messi', 'score': '10'},
        {'text': 'Ronaldo', 'score': '5'},
        {'text': 'Mbabi', 'score': '3'},
        {'text': 'Griezmain', 'score': '1'}
      ]
    },
  ];

  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    //_questionIndex < questions.length ? done=true : done=false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
          centerTitle: true,
        ),
        body: Container(
            child: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestion,
                  )
                : Result()),
      ),
    );
  }
}
