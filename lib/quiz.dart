import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function()? answerQuestion;
  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestion}
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText'].toString()),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answers(answerQuestion, answer['text'].toString()))
            .toList(),
      ],
    );
  }
}
