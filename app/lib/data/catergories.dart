import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pohnpeian_language_app/data/questions.dart';
import 'package:pohnpeian_language_app/models/categories.dart';
import 'package:pohnpeian_language_app/data/questions2.dart';
import 'package:pohnpeian_language_app/data/questions3.dart';
import 'package:pohnpeian_language_app/data/questions4.dart';
import 'package:pohnpeian_language_app/data/questions5.dart';

final categories = <Category>[
  Category(
    questions: getQuestions(),
    categoryName: 'Greetings',
    backgroundColor: Colors.lightBlue,
    icon: FontAwesomeIcons.handHolding,
    description: 'Practice questions from various chapters in physics',
  ),
  Category(
    questions: getQuestions2(),
    categoryName: 'Family',
    backgroundColor: Colors.lightGreen,
    icon: FontAwesomeIcons.children,
    description: 'Practice questions from various chapters in chemistry',
  ),
  Category(
    questions: getQuestions3(),
    categoryName: 'Food',
    backgroundColor: Colors.purpleAccent,
    icon: FontAwesomeIcons.burger,
    description: 'Practice questions from various chapters in maths',
  ),
  Category(
    questions: getQuestions4(),
    categoryName: 'Objects',
    backgroundColor: Colors.pink,
    icon: FontAwesomeIcons.book,
    description: 'Practice questions from various chapters in biology',
  ),
  Category(
    questions: getQuestions5(),
    categoryName: 'Travel',
    backgroundColor: Colors.pink,
    icon: FontAwesomeIcons.book,
    description: 'Practice questions from various chapters in biology',
  ),
];
