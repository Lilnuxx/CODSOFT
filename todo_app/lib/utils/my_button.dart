import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  VoidCallback onpressed;
   MyButton({
    super.key,
    required this.name,
    required this.onpressed,

  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      color: Color.fromARGB(255, 165, 121, 172),
      elevation: 0,
      padding:EdgeInsetsDirectional.all(10),
      child: Text(name),
    );
  }
}
