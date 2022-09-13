import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressed;
  final String answerText;

  const Answer(this.onPressed, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(answerText),
      ),
    );
  }
}
