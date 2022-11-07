import 'package:flutter/material.dart';
import 'quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pohnpei Tutor',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LessonScreen());
  }
}
