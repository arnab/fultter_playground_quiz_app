import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionNum = 0;

  void _answerQuestion() {
    setState(() {
      _questionNum++;
    });
    print('Current questionNum: $_questionNum');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
    ];

    return MaterialApp(
      title: 'Flutter Playground',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Flutter!'),
        ),
        body: Column(
          children: [
            Text(questions[_questionNum]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
