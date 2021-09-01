import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Yes..!  you Did it!',
        style: TextStyle(
          fontSize: 28,
          color: Colors.blue,
        ),
      ),
    );
  }
}
