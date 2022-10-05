// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext buildContext) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(title: Text('My Flutter App')),
//             body: Center(
//                 child: Column(children: [
//               Text('Text 1'),
//               ElevatedButton(onPressed: null, child: Text('Something')),
//             ]))));
//   }
// }

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;

  var questions = [
    'What is your favorite Food?',
    'What is your favorite Place?',
    'What is your favorite School',
    'fdsfsd'
  ];

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  Widget build(BuildContext buildContext) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Title of Application")),
            body: Container(
              height: double.infinity,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Question(questions, questionIndex),
                    ElevatedButton(
                      child: Text("Choice Number 1"),
                      onPressed: answerQuestion,
                    ),
                    ElevatedButton(
                      child: Text("Choice Number 2"),
                      onPressed: answerQuestion,
                    ),
                    Question(questions, questionIndex),
                    ElevatedButton(
                      child: Text("Choice Number 3"),
                      onPressed: answerQuestion,
                    ),
                    ElevatedButton(
                      child: Text("Choice Number 3"),
                      onPressed: answerQuestion,
                    ),
                  ],
                ),
              ),
            )));
  }
}
