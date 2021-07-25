


import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "You did it!",
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
