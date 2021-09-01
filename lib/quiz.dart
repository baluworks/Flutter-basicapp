import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final questionIndex;
  final VoidCallback answerQuestion;

  Quiz(this.questions, this.questionIndex, this.answerQuestion);

  List<Widget> getAnsButtons() {
    return (this.questions[questionIndex]['answers'] as List<String>)
        .map((ans) => Answer(ans, this.answerQuestion))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question'] as String),
        Container(
          alignment: Alignment.centerLeft,
          child: Column(children: [...getAnsButtons()]),
        ),
      ],
    );
  }
}
