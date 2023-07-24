import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Answer_Button extends StatelessWidget {
  Answer_Button({
    required this.answertext,
    required this.onTap,
    super.key,
  });
  final void Function() onTap;
  final String answertext;
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 26, 2, 85),
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onTap,
      child: Text(
        answertext,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontStyle: FontStyle.italic),
      ),
    );
  }
}
