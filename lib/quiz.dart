import 'package:flutter/material.dart';
import './que.dart';
import './ans.dart';

class Quiz extends StatelessWidget {
  final Function ansQue;
  final int queInd;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.ansQue, @required this.questions, @required this.queInd});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[queInd]['que'],
        ),
        ...(questions[queInd]['anss'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => ansQue(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
