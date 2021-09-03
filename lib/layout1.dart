import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  const Layout1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(onPressed: null, child: Text('Hey laout')),
    );
  }
}
