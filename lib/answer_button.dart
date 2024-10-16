import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answertext,
      required this.ontap, 
      super.key});

  final String answertext;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 60 , vertical: 10),
        foregroundColor: Colors.black87,
        backgroundColor:  const Color.fromARGB(255, 98, 15, 86),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        )
      ),
      onPressed: ontap,
      child: Text(answertext,textAlign: TextAlign.center),
    );
  }
}
