import 'package:flutter/material.dart';
import 'package:quiz_app_/view/splashscreen/splashscreen.dart';

void main() {
  runApp(const Quizapp());
}

class Quizapp extends StatelessWidget {
  const Quizapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
    );
  }
}
