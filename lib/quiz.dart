import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quizclass();
  }
}

class _Quizclass extends State<Quiz> {
  var activescreen = "start-screen";
  List<String> selectedAnswer = [];

  void switchscreen() {
    setState(() {
      activescreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == question.length) {
      setState(() {
        activescreen = "result-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchscreen);

    if (activescreen == "question-screen") {
      screenWidget = Question(
        onselectanswer: chooseAnswer,
      );
    }

    if (activescreen == "result-screen") {
      screenWidget = ResultScreen(chosenAnswer: selectedAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 100, 18, 125),
                Color.fromARGB(255, 74, 7, 79),
                Color.fromARGB(255, 53, 6, 59),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
