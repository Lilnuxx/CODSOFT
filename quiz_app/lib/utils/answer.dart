import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerHandler;
  final String answerText;
  Answer({required this.answerHandler, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: answerHandler,
            child: Text(answerText,
            style: TextStyle(
              fontSize: 20
            )),
            style: ElevatedButton.styleFrom(
                elevation: 20,
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                minimumSize: Size(100, 100),)
          ),
        ),
      ],
    );
  }
}
