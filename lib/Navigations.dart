import 'package:flutter/material.dart';

class Navigations extends StatelessWidget {
  final Function onChange;
  const Navigations({Key? key, required this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          OutlinedButton(
            onPressed: () => onChange(1),
            child: Text('First'),
          )
        ],
      ),
    );
  }
}
