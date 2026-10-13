import 'package:flutter/material.dart';
import 'package:quiz_app_fa26/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StartScreen();
  }
}