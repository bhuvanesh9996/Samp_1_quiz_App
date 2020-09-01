import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String queText;

  Question(this.queText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  double.infinity,
      margin: EdgeInsets.all(9),
      child: Text(
        queText,
        style: TextStyle(fontSize: 27),
        textAlign: TextAlign.center,
      ),
    );
  }
}
