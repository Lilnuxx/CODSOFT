import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/utils/my_button.dart';

class dialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  dialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 197, 168, 202),
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    labelText: "Taskname")),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(name: "Save", onpressed: onSave),
                const SizedBox(
                  width: 10,
                ),
                MyButton(name: "Cancel", onpressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
