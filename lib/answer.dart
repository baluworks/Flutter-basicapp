import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final VoidCallback selectHandler;

  Answer(this.answer, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    print(answer);
    return Container(
      width: double.infinity,
      height: 45,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        bottom: 2,
      ),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: this.selectHandler,
        child: Text(this.answer),
      ),
    );
  }
}
