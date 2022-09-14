import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class QnA extends StatelessWidget {
  final String questionText;
  final List<Map<String, Object>> answers;
  final void Function(int) fnAnswerQuestion;

  const QnA({
    required this.questionText,
    required this.answers,
    required this.fnAnswerQuestion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText),
        ...answers.map((answer) {
          return Answer(
            fnAnswerQuestion: fnAnswerQuestion,
            answerText: answer['text']! as String,
            answerScore: answer['score']! as int,
          );
        }).toList()
      ],
    );
  }
}
