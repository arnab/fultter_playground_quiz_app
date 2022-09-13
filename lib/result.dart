import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;

  const Result(this.score, this.resetHandler, {super.key});

  String get resultPhrase {
    String resultText = 'Your score is: $score. ';
    if (score <= 5) {
      resultText += ' Very likeable!';
    } else {
      resultText += ' That\'s crazy!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetHandler,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            child: const Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
