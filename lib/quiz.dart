import 'package:flutter/material.dart';

import 'data/questions.dart';
import 'questions_screen.dart';
import 'results_screen.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  final List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultsScreen(
          chosenAnswers: List.of(selectedAnswers),
          onRestart: restartQuiz,
        );
      });
    }
  }

  void switchScreen() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = QuestionsScreen(
        onSelectedAnswer: chooseAnswer,
      );
    });
  }

  void restartQuiz() {
    switchScreen();
  }

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  @override
  Widget build(BuildContext context) {
    return activeScreen!;
  }
}