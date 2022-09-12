import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String _questionText;

  Question(this._questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(_questionText);
  }
}
