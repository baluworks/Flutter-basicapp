import 'package:flutter/material.dart';

class CounterIncrementor extends StatelessWidget {
  final VoidCallback setCount;
  CounterIncrementor({Key? key, required this.setCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: setCount,
        child: Text(
          'Increment',
        ),
      ),
    );
  }
}
