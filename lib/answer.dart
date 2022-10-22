import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final Function handleAnswer;
  final String answer;
  
  Answer(this.handleAnswer, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(this.answer), 
        onPressed: this.handleAnswer,
        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
    ));
  }
}