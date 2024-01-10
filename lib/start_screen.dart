import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 136, 8, 191),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/quiz-logo.png'),
                  width: 300,
                  height: 300,
                ),
                SizedBox(height: 50),
                const Text('Learn Flutter the fun way!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Start Quiz!'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[500],
                    foregroundColor: Colors.white,
                    minimumSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ),
              ],
            ),
          )),
    );
  }
}