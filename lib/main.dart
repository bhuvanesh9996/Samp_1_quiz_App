import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

/*void main() {
  runApp(MyApp());
}
*/
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'que': 'What\'s your favorite color?',
      'anss': [
        {'text': 'Red', 'score': 3},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 4},
        {'text': 'Yellow', 'score': 2}
      ],
    },
    {
      'que': 'What\'s your favorite pet?',
      'anss': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 2},
        {'text': 'Pig', 'score': 4},
        {'text': 'Rabbit', 'score': 3},
      ],
    },
    {
      'que': 'What\'s your lucky number?',
      'anss': [
        {'text': '7', 'score': 2},
        {'text': '5', 'score': 3},
        {'text': '9', 'score': 5},
        {'text': '6', 'score': 4},
      ],
    },
  ];

  var _queInd = 0;
  var _totalScore = 0;

  void _resQuiz(){
    setState(() {
      _queInd = 0;
      _totalScore =0;
    });
  }

  void _ansQue(int score) {
    _totalScore += score;

    setState(() {
      _queInd++;
    });
    print(_queInd);

    if (_queInd < _questions.length) {
      print('We have more Questions!');
    } else {
      print('No more Questions.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _queInd < _questions.length
              ? Quiz(queInd: _queInd, questions: _questions, ansQue: _ansQue)
              : Result(_resQuiz, _totalScore)),
    );
  }
}
