import 'package:flutter_quiz/models/quiz_question.dart';

const questions = [
  QuizQuestion(
      question: 'What are the main building blocks of Flutter UIs?',
      answers: ['Widgets', 'Components', 'Blocks', 'Functions'],
      correctAnswer: 0),
  QuizQuestion(
      question: 'What is the name of the programming language used by Flutter?',
      answers: ['Dart', 'Kotlin', 'Java', 'C#'],
      correctAnswer: 0),
  QuizQuestion(
      question: 'What\'s the purpose of a StatefulWidget?',
      answers: [
        'Update UI as data changes',
        'Update data as UI changes',
        'Ignore data changes',
        'Render UI that does not depend on data',
      ],
      correctAnswer: 0),
  QuizQuestion(
      question:
          'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
      answers: [
        'StatelessWidget',
        'StatefulWidget',
        'Both are equally good',
        'None of the above',
      ],
      correctAnswer: 0),
  QuizQuestion(
      question: 'What happens if you change data in a StatelessWidget?',
      answers: [
        'The UI is not updated',
        'The UI is updated',
        'The closest StatefulWidget is updated',
        'Any nested StatefulWidgets are updated',
      ],
      correctAnswer: 0),
  QuizQuestion(
      question: 'What happens if you change data in a StatefulWidget?',
      answers: [
        'The UI is not updated',
        'The UI is updated',
        'The closest StatelessWidget is updated',
        'Any nested StatefulWidgets are updated',
      ],
      correctAnswer: 1),
  QuizQuestion(
    question: 'How should you update data inside of StatefulWidgets?',
    answers: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
    correctAnswer: 0,
  ),
];
