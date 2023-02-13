import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(Question(
    text: 'Which of the following is "Thank you" (formal)?',
    options: [
      Option(code: 'A', text: 'Ehng', isCorrect: false),
      Option(code: 'B', text: 'Kalahngan', isCorrect: true),
      Option(code: 'C', text: 'Mwenge', isCorrect: false),
      Option(code: 'D', text: 'Malek', isCorrect: false),
    ],
    solution: 'The correct answer is "Kalahngan" ',
  ));
  list.add(Question(
    text: 'Which of the following is "Thanks" (informal)?',
    options: [
      Option(code: 'A', text: 'Kahlail', isCorrect: false),
      Option(code: 'B', text: 'Mwahu', isCorrect: false),
      Option(code: 'C', text: 'Menlau', isCorrect: false),
      Option(code: 'D', text: 'E-yung', isCorrect: true),
    ],
    solution: 'The correct answer is "E-yung" ',
  ));
  list.add(Question(
    text: 'Which of the following is "Hello"?',
    options: [
      Option(code: 'A', text: 'Kidi', isCorrect: false),
      Option(code: 'B', text: 'Malek', isCorrect: false),
      Option(code: 'C', text: 'A kis', isCorrect: false),
      Option(code: 'D', text: 'Kaselehlie', isCorrect: true),
    ],
    solution: 'The correct answer is Kaselehlie',
  ));
  list.add(Question(
    text: 'Which of the following is "How are you?" ?',
    options: [
      Option(code: 'A', text: 'La iromw', isCorrect: true),
      Option(code: 'B', text: 'Pwohng mwahu', isCorrect: false),
      Option(code: 'C', text: "A kis", isCorrect: false),
      Option(code: 'D', text: "E-yung", isCorrect: false),
    ],
    solution: 'The correct answer is Kaselehlie',
  ));
  list.add(Question(
    text: 'Which of the following is "Good morning"?',
    options: [
      Option(code: 'A', text: 'Soutik mwahu', isCorrect: false),
      Option(code: 'B', text: 'Pwohng mwahu', isCorrect: false),
      Option(code: 'C', text: 'Menseng mwahu', isCorrect: true),
      Option(code: 'D', text: 'Souwas mwahu', isCorrect: false),
    ],
    solution: 'The correct answer is "Menseng mwahu"',
  ));
  list.add(Question(
    text: ' Which of the following is "Good afternoon"?',
    options: [
      Option(code: 'A', text: 'Menseng mwahu', isCorrect: false),
      Option(code: 'B', text: 'Pwohng mwahu', isCorrect: false),
      Option(code: 'C', text: 'Souwas mwahu', isCorrect: true),
      Option(
        code: 'D',
        text: 'Soutik mwahu',
        isCorrect: false,
      ),
    ],
    solution: 'The correct answer is "Souwas mwahu"',
  ));
  list.add(Question(
    text: 'It\'s getting dark. It was nice meeting you. _______.',
    options: [
      Option(code: 'A', text: 'Soutik mwahu', isCorrect: false),
      Option(code: 'B', text: 'Menseng mwahu', isCorrect: false),
      Option(code: 'C', text: 'Souwas mwahu', isCorrect: false),
      Option(code: 'D', text: 'Pwohng mwahu', isCorrect: true),
    ],
    solution: 'The correct answer is "Pwohng mwahu"',
  ));
  return list;
}
//inspo Johannes Milke for answer choices styling
