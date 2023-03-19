import 'package:flutter/material.dart';
import 'question.dart';

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
  List<String> questions = ["What is your name ?", "Where are you ?"];
  int? numb = 0;

  void changeQuestion() {
    try {
      setState(() {
        numb = numb! + 1;
      });
      print(questions[numb!]);
    } catch (e, stack) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Welcome"),
          shadowColor: Colors.orange,
        ),
        body: Column(children: [
          Question(questions[this.numb!]),
          ElevatedButton(onPressed: changeQuestion, child: Text("Press"))
        ]),
      ),
    );
  }
}
