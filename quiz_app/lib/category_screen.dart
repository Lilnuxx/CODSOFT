import 'package:flutter/material.dart';
import 'package:quiz_app/models/flutter.dart';
import 'package:quiz_app/models/java.dart';
import 'package:quiz_app/models/math.dart';
import 'package:quiz_app/models/python.dart';
import 'package:quiz_app/utils/category_btns.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App   :   Choose Category",
        style: TextStyle(fontWeight: FontWeight.bold),),
        elevation: 10,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 35,
          ),
          CategoryBtns(
              screenHandler: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Flutter()));
              },
              btnText: "--->FLUTTER<---"),
          SizedBox(height: 20),
          CategoryBtns(
              screenHandler: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Java()));
              },
              btnText: "--->JAVA<---"),
          SizedBox(
            height: 20,
          ),
          CategoryBtns(
              screenHandler: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Math()));
              },
              btnText: "--->MATHS<---"),
          SizedBox(height: 20),
          CategoryBtns(
              screenHandler: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Python()));
              },
              btnText: "--->PYTHON<---")
        ],
      ),
    );
  }
}
