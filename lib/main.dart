import 'package:flutter/material.dart';
import 'package:flutter_quiz/start_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Quiz App',
        home: Scaffold(
          body: StartScreen(),
        ));
  }
}
