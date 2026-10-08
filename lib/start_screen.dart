import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return Center(
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
        'assets/images/quiz-logo.png',
        width: 300,
      ),
        const SizedBox(height: 80),
        const Text(
          "Challenge Yourself!",
          style: TextStyle(
            color: Colors.white,
          fontSize: 24
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
       ],    
      ),
   );  
  }
}