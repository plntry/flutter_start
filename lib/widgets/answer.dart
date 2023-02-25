import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: SizedBox(
        width: 250,
        child: ElevatedButton(
          onPressed: () => selectHandler(),
          child: Text(answerText),
        ),
      ),
    );
  }
}
