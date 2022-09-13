import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressed;

  const Answer(this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: const Text('Answer 1'),
      ),
    );
  }
}
