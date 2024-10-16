import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/question_data.dart';

class Question extends StatefulWidget {
  const Question({super.key, required this.onselectanswer});

  final void Function(String answer) onselectanswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<Question> {
  var currentquestionindex = 0;

  answerquestion(String selectedanswer) {
    widget.onselectanswer(selectedanswer);
    setState(() {
      currentquestionindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = question[currentquestionindex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              style: GoogleFonts.lato(
                  color: Colors.white70,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentquestion.getshuffledAnswer().map(
              (answers) {
                return AnswerButton(
                  answertext: answers,
                  ontap: () {
                    answerquestion(answers);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
