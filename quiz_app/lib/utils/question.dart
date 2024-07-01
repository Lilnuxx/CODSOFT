import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  var questionText;
  Question({required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(questionText,
      style: TextStyle(
        fontSize: 36,
        overflow: TextOverflow.clip
        
      ),),
    );
  }
}
