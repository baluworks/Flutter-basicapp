import 'package:basicapp/counter.dart';
import 'package:basicapp/profilepic.dart';
import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';
import 'counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  List<Map<String, Object>> questions = [
    {
      'question': 'Question one',
      'answers': ['A.q1', 'A.q2', 'A.q3', 'A.q4']
    },
    {
      'question': 'Question Two',
      'answers': ['B.q1', 'B.q2', 'B.q3', 'B.q4']
    },
    {
      'question': 'Question three',
      'answers': ['C.q3', 'C.q3', 'C.q3', 'C.q4']
    }
  ];

  void answerQuestion() {
    print(questions);
    if (renderCheck()) {
      setState(() {
        questionIndex++;
      });
    }
  }

  bool renderCheck() => (questionIndex < questions.length);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    Widget page = renderCheck()
        ? Quiz(questions, questionIndex, answerQuestion)
        : Container(
            height: 400,
            color: Colors.blueGrey[300],
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Result(),
                  Counter(),
                  Result(),
                  Counter(),
                  ProfilePic(
                    picuture:
                        'https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2021/04/pawan-kalyan-1618139114.jpg',
                    title: 'Pawan Kalyan',
                  )
                ],
              ),
            ),
          );

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First Quiz App.'),
            actions: [],
          ),
          body: page),
    );
  }
}
