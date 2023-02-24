import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
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
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: () => answerQuestion(),
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => answerQuestion(),
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () => answerQuestion(),
              child: const Text('Answer 3'),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
