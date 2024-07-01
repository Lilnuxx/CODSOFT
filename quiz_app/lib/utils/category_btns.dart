import 'package:flutter/material.dart';

class CategoryBtns extends StatelessWidget {
  final VoidCallback screenHandler;
  final String btnText;
  CategoryBtns({
    required this.screenHandler,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: screenHandler,
        child: Text(
          btnText,
          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 3),
        ),
         style: ElevatedButton.styleFrom(
          elevation: 20,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          minimumSize: Size(230, 160),
          backgroundColor: Color(0xFF1E1E2C)
        ));
  }
}
