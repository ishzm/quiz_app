import 'package:flutter/material.dart';
import 'data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  @override
  Widget build(BuildContext context) {
    int correctAnswers = 0;

    for (int i = 0; i < questions.length; i++) {
      if (chosenAnswers[i] == questions[i].answers[0]) {
        correctAnswers++;
      }
    }

    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You answered $correctAnswers out of '
                '${questions.length} questions correctly!',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),

              Expanded(
                child: ListView.builder(
                  itemCount: questions.length,
                  itemBuilder: (context, index) {
                    final question = questions[index];
                    final selectedAnswer =
                        chosenAnswers[index];
                    final correctAnswer =
                        question.answers[0];

                    final isCorrect =
                        selectedAnswer == correctAnswer;

                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Row(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 42,
                            height: 42,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: isCorrect
                                  ? Colors.greenAccent
                                  : Colors.redAccent,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),

                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  question.text,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),

                                Text(
                                  'Your answer: $selectedAnswer',
                                  style: TextStyle(
                                    color: isCorrect
                                        ? Colors.greenAccent
                                        : Colors.redAccent,
                                    fontSize: 17,
                                  ),
                                ),
                                const SizedBox(height: 5),

                                Text(
                                  'Correct answer: $correctAnswer',
                                  style: const TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton.icon(
                onPressed: onRestart,
                icon: const Icon(Icons.restart_alt),
                label: const Text(
                  'Start Again',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor:
                      const Color.fromARGB(255, 78, 13, 151),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}