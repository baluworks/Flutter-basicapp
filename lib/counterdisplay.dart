import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({Key? key, this.count}) : super(key: key);
  final count;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Count : $count',
      ),
    );
  }
}
