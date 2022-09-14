import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final void Function(int) fnAnswerQuestion;
  final String answerText;
  final int answerScore;

  const Answer({
    required this.fnAnswerQuestion,
    required this.answerText,
    required this.answerScore,
    super.key,
  });

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => widget.fnAnswerQuestion(widget.answerScore),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
        ),
        child: Text(widget.answerText),
      ),
    );
  }
}
