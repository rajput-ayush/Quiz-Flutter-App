import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

  List<Map<String, Object>> summarydata() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        "question": question[i].text,
        "correct_answer": question[i].answers[0],
        "user_answer": chosenAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = summarydata();
    final numtotalquestions = question.length;
    final numcorrectquestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("You answered $numcorrectquestions questions out of $numtotalquestions questions correctly"),
            const SizedBox(
              height: 20,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
