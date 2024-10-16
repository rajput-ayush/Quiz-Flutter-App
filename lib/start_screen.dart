import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 250,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Learn the flutter easy way",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(179, 225, 216, 216),
            ),
            icon: const Icon(Icons.lightbulb_circle),
            label: const Text(
              "Start Quiz",
              style: TextStyle(
                color: Colors.white38,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
