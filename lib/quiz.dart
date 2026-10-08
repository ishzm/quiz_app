import 'package:flutter/material.dart';
import 'start_screen.dart'

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState () {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return StartScreen();
  }
}