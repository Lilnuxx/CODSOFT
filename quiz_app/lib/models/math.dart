import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz.dart';
import 'package:quiz_app/models/reset_quiz.dart';

class Math extends StatefulWidget {
  const Math({super.key});

  @override
  State<Math> createState() => _MathState();
}

class _MathState extends State<Math> {
  final questions = [
    {
      'quesText': 'What is 68/4?',
      'answers': [
        {
          'text': '18',
          'score': 0,
        },
        {
          'text': '16',
          'score': 0,
        },
        {
          'text': '17',
          'score': 10,
        },
        {
          'text': '14',
          'score': 0,
        },
      ],
    },
    {
      'quesText': 'What is (a+b)^2?',
      'answers': [
        {
          'text': 'a^2+b^2',
          'score': 0,
        },
        {
          'text': 'a^2+b^2+2ab',
          'score': 10,
        },
        {
          'text': 'a^2+b^2-2ab',
          'score': 0,
        },
        {'text': '(a+b)^2-2ab', 'score': 0},
      ],
    },
    {
      'quesText': 'What is square root of 625?',
      'answers': [
        {
          'text': '15',
          'score': 0,
        },
        {
          'text': '14',
          'score': 0,
        },
        {
          'text': '25',
          'score': 10,
        },
        {
          'text': '20',
          'score': 0,
        },
      ],
    },
    {
      'quesText': 'What is cube root 512?',
      'answers': [
        {
          'text': '6',
          'score': 0,
        },
        {
          'text': '8',
          'score': 10,
        },
        {
          'text': '9',
          'score': 0,
        },
        {
          'text': '7',
          'score': 0,
        },
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
        title: Text("Topic:Math"),
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
