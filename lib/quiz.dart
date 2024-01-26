import 'package:flutter/material.dart';
import 'package:flutter_quiz/start_screen.dart';
import 'package:flutter_quiz/questions_screen.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen'; // Render Content Conditionally
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer); // Store selected answers

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreen = 'question-screen';
      selectedAnswers = [];
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(chosenAnswers: selectedAnswers, restartQuiz: restartQuiz);
    }

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
              child: screenWidget),
        ));
  }
}
