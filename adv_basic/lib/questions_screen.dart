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
    var currentQuestion = questions[1];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questions[0].text,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          Answer_Button(answertext: questions[0].answers[0], onTap: () {}),
          const SizedBox(
            height: 20,
          ),
          Answer_Button(answertext: questions[0].answers[1], onTap: () {}),
          const SizedBox(
            height: 20,
          ),
          Answer_Button(answertext: questions[0].answers[2], onTap: () {}),
          const SizedBox(
            height: 20,
          ),
          Answer_Button(answertext: questions[0].answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
