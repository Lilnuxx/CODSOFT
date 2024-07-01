import 'package:flutter/material.dart';
import 'package:quiz_app/category_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyAppColours{
    static final darkBlue = Color(0xFF1E1E2C);
    static final lightBlue = Color(0xFF2D2D44);
  }

  class MyAppThemes {
    static final darkTheme = ThemeData(
    primaryColor: MyAppColours.darkBlue,
    scaffoldBackgroundColor: MyAppColours.lightBlue,
    brightness: Brightness.dark,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppThemes.darkTheme,
      debugShowCheckedModeBanner: false,
      home: CategoryScreen(),
    );
  }
}
