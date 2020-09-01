import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resQ;
  final int testResult;
  Result(this.resQ, this.testResult);
  String get resultPhrase {
    var resultText;
    if (testResult <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (testResult <= 12) {
      resultText = 'You are Pretty Likeable!';
    } else if (testResult <= 14) {
      resultText = 'You are Shady!';
    } else {
      resultText = 'You are Undefined!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset Quiz!'),
            textColor: Colors.grey,
            onPressed: resQ,
          ),
        ],
      ),
    );
  }
}
  