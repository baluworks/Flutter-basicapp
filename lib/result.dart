import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result({Key? key, required this.totalScore, required this.reset});
  final totalScore;
  final VoidCallback reset;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Yes..!  you Did it! Your Score:$totalScore',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
          FlatButton(
            onPressed: reset,
            child: Text(
              'Reset Quiz',
            ),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
