import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz.dart';
import 'package:quiz_app/models/reset_quiz.dart';

class Python extends StatefulWidget {
  const Python({super.key});

  @override
  State<Python> createState() => _PythonState();
}

class _PythonState extends State<Python> {
  final questions = [
    {
      'quesText': 'What is the purpose of the "import" statement in Python?',
      'answers': [
        {
          'text': 'To define a variable',
          'score': 0,
        },
        {
          'text': 'To define a function',
          'score': 0,
        },
        {
          'text': 'To include external modules or libraries',
          'score': 10,
        },
        {
          'text': 'To print output to the console',
          'score': 0,
        },
      ],
    },
    {
      'quesText':
          'What is the difference between a list and a tuple in Python?',
      'answers': [
        {
          'text': 'Lists are mutable, tuples are immutable',
          'score': 10,
        },
        {
          'text': 'Lists use square brackets, tuples use round brackets',
          'score': 0,
        },
        {
          'text':
              'Lists can only store integers, tuples can store any data type',
          'score': 0,
        },
        {
          'text': 'There is no difference, they are the same',
          'score': 0,
        },
      ],
    },
    {
      'quesText': 'What is the purpose of the "def" keyword in Python?',
      'answers': [
        {
          'text': 'To define a variable',
          'score': 0,
        },
        {
          'text': 'To define a function',
          'score': 10,
        },
        {
          'text': 'To include external modules or libraries',
          'score': 0,
        },
        {
          'text': 'To print output to the console',
          'score': 0,
        },
      ],
    },
    {
      'quesText':
          'What is the output of the following code?\n\nprint(type(5 + 5.0))',
      'answers': [
        {
          'text': '<class int>',
          'score': 0,
        },
        {
          'text': '<class float>',
          'score': 10,
        },
        {
          'text': '<class str>',
          'score': 0,
        },
        {
          'text': 'It will raise a TypeError',
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
        title: Text("Topic:Python"),
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
