import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String ansT;
  Answer(this.selectHandler, this.ansT);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.black,
        child: Text(ansT),
        onPressed: selectHandler,
      ),
    );
  }
}
