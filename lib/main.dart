import 'package:basicapp/counter.dart';
import 'package:basicapp/navigations.dart';
import 'package:basicapp/profilepic.dart';
import 'package:flutter/material.dart';

import 'layout1.dart';
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
  var _totalScore = 0;
  var _currentNav = 0;
  List<Map<String, Object>> questions = [
    {
      'question': 'Question one',
      'answers': [
        {'text': 'Ans 1', 'score': 5},
        {'text': 'Ans 2', 'score': 3},
        {'text': 'Ans 3', 'score': 6},
        {'text': 'Ans 4', 'score': 0},
      ]
    },
    {
      'question': 'Question Two',
      'answers': [
        {'text': 'Ans 1', 'score': 5},
        {'text': 'Ans 2', 'score': 10},
        {'text': 'Ans 3', 'score': 1},
        {'text': 'Ans 4', 'score': 5}
      ]
    },
    {
      'question': 'Question three',
      'answers': [
        {'text': 'Ans 1', 'score': 5},
        {'text': 'Ans 2', 'score': 10},
        {'text': 'Ans 3', 'score': 1},
        {'text': 'Ans 4', 'score': 3}
      ]
    }
  ];

  void answerQuestion(int score) {
    print(questions);
    this._totalScore += score;
    print(this._totalScore);
    if (renderCheck()) {
      setState(() {
        questionIndex++;
      });
    }
  }

  void onNavigationChange(int value) {
    print(value);
    setState(() {
      _currentNav = value;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  bool renderCheck() => (questionIndex < questions.length);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    Widget page;
    switch (this._currentNav) {
      case 1:
        page = Layout1();
        break;
      default:
        page = renderCheck()
            ? Column(
                children: [
                  Quiz(
                    questions,
                    questionIndex,
                    answerQuestion,
                  ),
                  Navigations(
                    onChange: onNavigationChange,
                  )
                ],
              )
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
                      Result(
                          totalScore: this._totalScore, reset: this.resetQuiz),
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
    }

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
