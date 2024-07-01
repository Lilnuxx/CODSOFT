import 'package:flutter/material.dart';
import 'package:quiz_app/utils/answer.dart';
import 'package:quiz_app/utils/question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function answerHandler;
  final List<Map<String, Object>> questions;
  Quiz(
      {required this.answerHandler,
      required this.questionIndex,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: questions[questionIndex]['quesText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              answerHandler: () => answerHandler(answer['score']),
              answerText: answer['text'].toString());
        })
      ],
    );
  }
}
