import 'package:basicapp/counterdisplay.dart';
import 'package:basicapp/counterincrementor.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var _count = 0;

  void setCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CounterIncrementor(setCount: setCount),
          const SizedBox(width: 16),
          CounterDisplay(
            count: _count,
          )
        ],
      ),
    );
    //Text('Hey$_count');
  }
}
