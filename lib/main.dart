import 'package:flutter/material.dart';
import 'quiz.dart'

void main() {
  runApp(MaterialApp(
    home: Scaffold(
     body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
          Color.fromARGB(255, 78, 13, 15),
          Color.fromARGB(255, 107, 15, 168),
        ],
        ),
      ),
      child: Quiz(),
    ),
  ),
  ),
  );
}