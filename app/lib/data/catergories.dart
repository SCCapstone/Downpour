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
    description: 'Test your knowledge on common greetings',
  ),
  Category(
    questions: getQuestions2(),
    categoryName: 'Family',
    backgroundColor: Colors.pink,
    icon: FontAwesomeIcons.children,
    description: 'Test your knowledge on Family Words',
  ),
  Category(
    questions: getQuestions3(),
    categoryName: 'Food words',
    backgroundColor: Colors.red,
    icon: FontAwesomeIcons.burger,
    description: 'Test your knowledge on Food and drink',
  ),
  Category(
    questions: getQuestions4(),
    categoryName: 'Objects',
    backgroundColor: Colors.yellow,
    icon: FontAwesomeIcons.book,
    description: 'Test your knowledge on random objects',
  ),
];
