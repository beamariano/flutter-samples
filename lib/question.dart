import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  List<String> questions;
  int questionIndex;

  Question(this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Text(questions.elementAt(questionIndex));
  }
}
