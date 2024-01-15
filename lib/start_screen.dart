import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/images/quiz-logo.png'),
            width: 300,
            height: 300,
            color: Color.fromRGBO(255, 255, 255, 0.5), // 50% white overlay
            colorBlendMode: BlendMode.modulate, // Blend the color
          ),
          const SizedBox(height: 50),
          const Text('Learn Flutter the fun way!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )),
          const SizedBox(height: 50),
          ElevatedButton.icon( // Button with icon and label
              onPressed: startQuiz,
              icon: const Icon(Icons.play_arrow),
              label: const Text('Start Quiz!'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[500],
                foregroundColor: Colors.white,
                minimumSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
        ],
      ),
    );
  }
}
