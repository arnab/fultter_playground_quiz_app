import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionNum = 0;

  void answerQuestion() {
    setState(() {
      questionNum++;
    });
    print('Current questionNum: $questionNum');
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
            Text(questions[questionNum]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
