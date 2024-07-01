import 'package:flutter/material.dart';

class ResetQuiz extends StatelessWidget {
  final VoidCallback resetHandler;
  final VoidCallback homeHandler;
  final int resultScore;
  ResetQuiz({
    required this.homeHandler,
    required this.resetHandler,
    required this.resultScore,
  });
  String get resultPhrase {
    String resultText;
    if (resultScore >= 30) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 20) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 10) {
      resultText = 'You need to work more!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'Score' ':' '$resultScore',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: resetHandler,
                child: Text("Retry"),
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  minimumSize: Size(100, 100),
                )),
                SizedBox(width: 20,),
            OutlinedButton(
                onPressed: homeHandler,
                child: Text("Home"),
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  minimumSize: Size(100, 100),
                ))
          ],
        )
      ],
    );
  }
}
