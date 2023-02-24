import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          'Black',
          'Red',
          'Green',
          'White',
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          'Rabbit',
          'Snake',
          'Elephant',
          'Lion',
        ],
      },
      {
        'questionText': 'What\'s your favorite browser?',
        'answers': [
          'Microsoft Edge',
          'Google Chrome',
          'Internet Explorer',
          'Opera',
        ]
      }
    ];

    return MaterialApp(
      title: 'Flutter Quiz App by Oksana Nedilko',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz App by Oksana Nedilko',
          ),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(_answerQuestion, answer))
                .toList()
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
