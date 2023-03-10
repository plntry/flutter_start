import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './choose_answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  const Quiz({
    required this.answerQuestion,
    required this.questionIndex,
    required this.questions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          const ChooseAnswer(),
          Question(
            questions[questionIndex]['questionText'] as String,
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) => Answer(() => answerQuestion(answer['score']),
                  answer['text'] as String))
              .toList()
        ],
      ),
    );
  }
}
