import 'package:flutter/material.dart';
import 'package:flutter_quiz/start_screen.dart';
import 'package:flutter_quiz/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const StartScreen(); // Store widget in variable

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen(); // Render Content Conditionally
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
        title: 'Quiz App',
        home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 136, 8, 191),
                    Color.fromARGB(255, 136, 8, 101),
                  ],
                ),
              ),
              child: activeScreen),
        ));
  }
}