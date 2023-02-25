import 'package:flutter/material.dart';

class ChooseAnswer extends StatelessWidget {
  const ChooseAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 55),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 8,
      shadowColor: Colors.grey,
      color: Colors.teal,
      child: SizedBox(
        height: 70,
        child: Center(
          child: Text(
            'Choose your answer',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.grey[300],
            ),
          ),
        ),
      ),
    );
  }
}
