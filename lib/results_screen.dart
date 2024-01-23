import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
      final List<Map<String, Object>> summaryData = [];

      for (var i = 0; i < chosenAnswers.length; i++) {
        summaryData.add({
          'question_index': i,
          'question': questions[i].question,
          'correctAnswer':questions[i].answers[0],
          'userAnswer': chosenAnswers[i],
        });
      }

      return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered x out of y questions correctly!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(176, 98, 255, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 50),
            QuestionSummary(summaryData: getSummaryData()),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Restart Quiz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
