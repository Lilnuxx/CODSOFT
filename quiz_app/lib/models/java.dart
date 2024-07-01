import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz.dart';
import 'package:quiz_app/models/reset_quiz.dart';

class Java extends StatefulWidget {
  const Java({super.key});

  @override
  State<Java> createState() => _JavaState();
}

class _JavaState extends State<Java> {
  final questions = [
    {
      'quesText':
          'What is the purpose of the "public" access modifier in Java?',
      'answers': [
        {
          'text':
              'To make a class, method, or variable accessible only within the same package',
          'score': 0,
        },
        {
          'text':
              'To make a class, method, or variable accessible only within the same class',
          'score': 0,
        },
        {
          'text':
              'To make a class, method, or variable accessible from anywhere in the program',
          'score': 10,
        },
        {
          'text':
              'To make a class, method, or variable accessible only to subclasses',
          'score': 0,
        },
      ],
    },
    {
      'quesText': 'What is the purpose of the "static" keyword in Java?',
      'answers': [
        {
          'text': 'To create an instance of a class',
          'score': 0,
        },
        {
          'text':
              'To create a method that can be called without creating an instance of the class',
          'score': 10,
        },
        {
          'text':
              'To create a variable that is unique to each instance of a class',
          'score': 0,
        },
        {
          'text':
              'To create a method that can only be called from within the same class',
          'score': 0,
        },
      ],
    },
    {
      'quesText': 'What is the purpose of the "extends" keyword in Java?',
      'answers': [
        {
          'text':
              'To create a new class that inherits properties and methods from an existing class',
          'score': 10,
        },
        {
          'text':
              'To create a new interface that inherits properties and methods from an existing interface',
          'score': 0,
        },
        {
          'text': 'To create a new class that implements an existing interface',
          'score': 0,
        },
        {
          'text':
              'To create a new class that is a subclass of an existing class',
          'score': 0,
        },
      ],
    },
    {
      'quesText':
          'What is the output of the following code?\n\nint x = 5;\nint y = 2;\nSystem.out.println(x / y);',
      'answers': [
        {
          'text': '2.5',
          'score': 0,
        },
        {
          'text': '2',
          'score': 10,
        },
        {
          'text': '2.0',
          'score': 0,
        },
        {
          'text': 'It will raise an error',
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
        title: Text("Topic:Java"),
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
