import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('The question...', style: TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          AnswerButton(answerText: "Question 1", onTap: () {}),
          AnswerButton(answerText: "Question 2", onTap: () {}),
          AnswerButton(answerText: "Question 3", onTap: () {}),
          AnswerButton(answerText: "Question 4", onTap: () {})
        ],
      ),
    );
  }
}