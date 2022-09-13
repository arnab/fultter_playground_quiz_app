import 'dart:math';

import 'package:flutter/material.dart';

import './qna.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Blue', 'score': 1},
        {'text': 'Green', 'score': 2},
        {'text': 'Red', 'score': 3},
        {'text': 'Purple', 'score': 4},
        {'text': 'Black', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 2},
        {'text': 'Orca', 'score': 3},
        {'text': 'Humpback', 'score': 4},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Wolf', 'score': 6},
      ],
    },
    {
      'questionText': 'What\'s your favourite language?',
      'answers': [
        {'text': 'English', 'score': 1},
        {'text': 'Spanish', 'score': 2},
        {'text': 'Kotlin', 'score': 3},
        {'text': 'Dart', 'score': 4},
      ],
    },
  ];

  var _questionNum = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionNum++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final moreQuestionsLeft = _questionNum < _questions.length;

    return MaterialApp(
      title: 'Flutter Playground',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Flutter!'),
        ),
        body: moreQuestionsLeft
            ? QnA(
                questionText:
                    _questions[_questionNum]['questionText']! as String,
                answers: _questions[_questionNum]['answers']!
                    as List<Map<String, Object>>,
                fnAnswerQuestion: (() => _answerQuestion(Random().nextInt(10))),
              )
            : Result(_totalScore),
      ),
    );
  }
}
