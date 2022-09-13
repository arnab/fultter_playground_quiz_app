import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
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
  final questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': ['Blue', 'Green', 'Red', 'Purple', 'Black'],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Dog', 'Cat', 'Orca', 'Humpback', 'Elephant', 'Wolf'],
    },
    {
      'questionText': 'What\'s your favourite language?',
      'answers': ['English', 'Spanish', 'Kotlin', 'Dart'],
    },
  ];

  var _questionNum = 0;

  void _answerQuestion() {
    setState(() {
      _questionNum++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final moreQuestionsLeft = _questionNum < questions.length;

    return MaterialApp(
      title: 'Flutter Playground',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Flutter!'),
        ),
        body: moreQuestionsLeft
            ? Column(
                children: [
                  Question(questions[_questionNum]['questionText'] as String),
                  ...(questions[_questionNum]['answers'] as List<String>)
                .map((answerText) {
                    return Answer(_answerQuestion, answerText);
                  }).toList()
                ],
              )
            : const Result(),
      ),
    );
  }
}
