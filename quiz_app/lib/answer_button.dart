import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsetsGeometry.symmetric(
          vertical: 10,
          horizontal: 60,
        ),
        backgroundColor: const Color.fromARGB(255, 80, 1, 158),
        foregroundColor: Colors.white,
      ),
      child: Text(answerText),
    );
  }
}
