import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';

List<Question> getQuestions5() {
  List<Question> list = [];

  list.add(Question(
    text: 'Which of the following is "Health"?',
    options: [
      Option(code: 'A', text: 'Kahlail', isCorrect: false),
      Option(code: 'B', text: 'Ipa', isCorrect: false),
      Option(code: 'C', text: 'Ehd', isCorrect: false),
      Option(code: 'D', text: 'Ire', isCorrect: true),
    ],
    solution: 'The correct answer is "Ire" ',
  ));
  list.add(Question(
    text: 'Which of the following is "Sick" (feeling)?',
    options: [
      Option(code: 'A', text: 'Oio', isCorrect: false),
      Option(code: 'B', text: 'Mai', isCorrect: false),
      Option(code: 'C', text: 'Uh', isCorrect: false),
      Option(code: 'D', text: 'Oh', isCorrect: true),
    ],
    solution: 'The correct answer is "Oh" ',
  ));
  list.add(Question(
    text: 'Which of the following is "Fever"?',
    options: [
      Option(code: 'A', text: 'Nain', isCorrect: false),
      Option(code: 'B', text: 'Kereniol', isCorrect: true),
      Option(code: 'C', text: 'Rapwa', isCorrect: false),
      Option(code: 'D', text: 'Malaulau', isCorrect: false),
    ],
    solution: 'The correct answer is "Kereniol"',
  ));
  list.add(Question(
    text: 'Which of the following is "Cold/Flu/Pneumonia" ?',
    options: [
      Option(code: 'A', text: 'Soumwahu en waii', isCorrect: true),
      Option(code: 'B', text: 'Soumwahu en wol', isCorrect: false),
      Option(code: 'C', text: 'Soumwahu karakar', isCorrect: false),
      Option(code: 'D', text: "Soumwahu lusulus", isCorrect: false),
    ],
    solution: 'The correct answer is "Soumwahu en waii"',
  ));
  list.add(Question(
    text: 'Which of the following is "Sneeze"?',
    options: [
      Option(code: 'A', text: 'Ned', isCorrect: false),
      Option(code: 'B', text: 'Waik', isCorrect: false),
      Option(code: 'C', text: 'Asi', isCorrect: true),
      Option(code: 'D', text: 'Memmen', isCorrect: false),
    ],
    solution: 'The correct answer is "Asi"',
  ));
  list.add(Question(
    text: ' Which of the following is "Cough"?',
    options: [
      Option(code: 'A', text: 'Koatun', isCorrect: false),
      Option(code: 'B', text: 'Kohpwa', isCorrect: false),
      Option(code: 'C', text: 'Kohpek', isCorrect: true),
      Option(code: 'D', text: 'Kopou', isCorrect: false,),
    ],
    solution: 'The correct answer is "Kohpek"',
  ));
  list.add(Question(
    text: 'Which of the following is "Vomit"?',
    options: [
      Option(code: 'A', text: 'Uk', isCorrect: false),
      Option(code: 'B', text: 'Pein', isCorrect: false),
      Option(code: 'C', text: 'Kahula', isCorrect: false),
      Option(code: 'D', text: 'Kaluhlu', isCorrect: true),
    ],
    solution: 'The correct answer is "Kaluhlu"',
  ));
  return list;
}