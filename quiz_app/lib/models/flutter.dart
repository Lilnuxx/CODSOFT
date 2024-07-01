import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz.dart';
import 'package:quiz_app/models/reset_quiz.dart';

class Flutter extends StatefulWidget {
  const Flutter({super.key});

  @override
  State<Flutter> createState() => _FlutterState();
}

class _FlutterState extends State<Flutter> {
  final questions = [
    {
      'quesText': 'What is Flutter known for?',
      'answers': [
        {'text': 'A programming language', 'score': 0},
        {'text': 'A framework for building user interfaces', 'score': 10},
        {'text': 'A cloud computing service', 'score': 0},
        {'text': 'A version control system', 'score': 0},
      ],
    },
    {
      'quesText':
          'Which programming language is primarily used for Flutter app development?',
      'answers': [
        {'text': 'Java', 'score': 0},
        {'text': 'Dart', 'score': 10},
        {'text': 'Swift', 'score': 0},
        {'text': 'Kotlin', 'score': 0},
      ],
    },
    {
      'quesText': 'What widget in Flutter is used to create a button?',
      'answers': [
        {'text': 'Text', 'score': 0},
        {'text': 'Button', 'score': 0},
        {'text': 'FlatButton', 'score': 10},
        {'text': 'Label', 'score': 0},
      ],
    },
    {
      'quesText': 'Which company developed Flutter?',
      'answers': [
        {'text': 'Facebook', 'score': 0},
        {'text': 'Apple', 'score': 0},
        {'text': 'Microsoft', 'score': 0},
        {'text': 'Google', 'score': 10},
      ],
    },
  ];
  int questionIndex = 0;
  void answerQuestion(int score) {
    totalScore += score;

    setState(() {
      questionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  int totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Topic:Flutter"),
        elevation: 10,
      ),
      body: questionIndex < questions.length
          ? Quiz(
              answerHandler: answerQuestion,
              questionIndex: questionIndex,
              questions: questions)
          : ResetQuiz(
              homeHandler: () {
                Navigator.pop(context);
              },
              resetHandler: resetQuiz,
              resultScore: totalScore,
            ),
    );
  }
}
