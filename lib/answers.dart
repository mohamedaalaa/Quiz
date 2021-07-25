import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function()? selectHandler;
  final String answer;
  Answers(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed:selectHandler,
        child: Text(answer),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
