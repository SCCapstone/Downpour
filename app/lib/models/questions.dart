import 'package:flutter/cupertino.dart';

import 'option.dart';

class Question {
  final String text;
  final List<Option> options;
  //final List<Answer> solutionList;
  final String solution;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
   // required this.solutionList,
    required this.solution,
    this.isLocked = false,
    this.selectedOption,
  });
}

/*class Answer {
  final String answerText;
  final bool isCorrect;

  options(this.answerText, this.isCorrect);
}*/
