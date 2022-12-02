import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pohnpeian_language_app/data/questions.dart';
import 'package:pohnpeian_language_app/models/categories.dart';
import 'package:pohnpeian_language_app/data/questions2.dart';
import 'package:pohnpeian_language_app/data/questions3.dart';
import 'package:pohnpeian_language_app/data/questions4.dart';


final categories = <Category>[
  Category(
    questions: getQuestions(),
    categoryName: 'Greetings',
    backgroundColor: Colors.blue,
    icon: FontAwesomeIcons.handHolding,
    description: 'Practice questions from various chapters in physics',
  ),
  Category(
    questions: getQuestions2(),
    categoryName: 'Family',
    backgroundColor: Colors.orange,
    icon: FontAwesomeIcons.children,
    description: 'Practice questions from various chapters in chemistry',
  ),
  Category(
    questions: getQuestions3(),
    categoryName: 'Food',
    backgroundColor: Colors.purple,
    icon: FontAwesomeIcons.burger,
    description: 'Practice questions from various chapters in maths',
  ),
  Category(
    questions: getQuestions4(),
    categoryName: 'Objects',
    backgroundColor: Color.fromARGB(255, 216, 98, 137),
    icon: FontAwesomeIcons.book,
    description: 'Practice questions from various chapters in biology',
  ),
];
