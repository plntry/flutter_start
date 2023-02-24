import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  const Result(this.resultScore, this.resetQuiz, {super.key});

  String get resultPhrase {
    String resultText = 'You did it!';

    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange';
    } else {
      resultText = 'Something is wrong with you';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(resultScore.toString()),
          TextButton(
            onPressed: () => resetQuiz(),
            child: const Text(
              'Restart Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
