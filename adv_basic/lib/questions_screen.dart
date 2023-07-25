import 'package:flutter/material.dart';
import 'package:adv_basic/data/Questions.dart';
import 'package:adv_basic/models/Answer_Button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    var currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.answers.map(
            (answer) {
              return Answer_Button(answertext: answer, onTap: () {});
            },
          )
        ],
      ),
    );
  }
}
