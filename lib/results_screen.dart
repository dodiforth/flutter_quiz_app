import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // (Buttons )Stretch to full width of screen
          children: [
            const Text(
              'You have completed the quiz!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(176, 98, 255, 1),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                backgroundColor: const Color.fromARGB(255, 96, 66, 227),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}