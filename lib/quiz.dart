import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = StartScreen();
  void switchScreen(){
    setState(( 
      activeScreen = QuestionsScreen();
    ));
  }
void initState(){
  activeScreen = StartScreen(switchScreen);
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StartScreen();
  }
}