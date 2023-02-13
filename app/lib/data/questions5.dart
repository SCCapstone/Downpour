import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';

List<Question> getQuestions5() {
  List<Question> list = [];
  list.add(Question(
    text: 'Which of the following is "Book"?',
    options: [
      Option(code: 'A', text: 'Soutik', isCorrect: false),
      Option(code: 'B', text: 'Menseng', isCorrect: false),
      Option(code: 'C', text: 'Souwas', isCorrect: false),
      Option(code: 'D', text: 'Pwuhk', isCorrect: true),
    ],
    solution: 'The correct answer is "Pwuhk"',
  ));
  return list;
}
