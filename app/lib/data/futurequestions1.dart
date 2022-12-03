// Future Question set 5 (Comprehension of 1 )
import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';


List<Question> getQuestions() {
  List<Question> list = [];


  list.add(Question(
      text: 'Which of the following is "Kalahngan" ?',
      options: [
        Option(code: 'A', text: 'Please', isCorrect: false),
        Option(code: 'B', text: 'Thank you (formal)', isCorrect: true),
        Option(code: 'C', text: 'Help', isCorrect: false),
        Option(code: 'D', text: 'Leave', isCorrect: false),
      ],
      solution: 'The correct answer is "Thank You" ',
    ));
    list.add(Question(
      text: 'Which of the following is E-yung ?',
      options: [
        Option(code: 'A', text: 'Dog', isCorrect: false),
        Option(code: 'B', text: 'Go', isCorrect: false),
        Option(code: 'C', text: 'Beach', isCorrect: false),
        Option(code: 'D', text: 'Thanks" (informal)', isCorrect: true),
      ],
      solution: 'The correct answer is Thanks (informal)',
    ));
    list.add(Question(
      text: 'Which of the following is "Kaselehlie"?',
      options: [
        Option(code: 'A', text: 'Kidi', isCorrect: false),
        Option(code: 'B', text: 'Malek', isCorrect: false),
        Option(code: 'C', text: 'Waterfall', isCorrect: false),
        Option(code: 'D', text: 'Hello', isCorrect: true),
      ],
      solution: 'The correct answer is Hello',
    ));
    list.add(Question(
      text: 'Which of the following is "La iromw" ?',
      options: [
        Option(code: 'A', text: "How are you?", isCorrect: true),
        Option(code: 'B', text: 'Where are you going?', isCorrect: false),
        Option(code: 'C', text: "How old are you?", isCorrect: false),
        Option(code: 'D', text: "How much?", isCorrect: false),
      ],
      solution: 'The correct answer is "How are you?"',
    ));
    list.add(Question(
      text: 'Which of the following is Menseng mwahu?',
      options: [
        Option(code: 'A', text: 'Good day', isCorrect: false),
        Option(code: 'B', text: 'Good night', isCorrect: false),
        Option(code: 'C', text: 'Good morning', isCorrect: true),
        Option(code: 'D', text: 'Good afternoon', isCorrect: false),
      ],
      solution: 'The correct answer is "Good morning"',
    ));
    list.add(Question(
      text: 'Which of the following is Menseng mwahu?',
      options: [
        Option(code: 'A', text: 'Good day', isCorrect: false),
        Option(code: 'B', text: 'Good night', isCorrect: false),
        Option(code: 'C', text: 'Good morning', isCorrect: true),
        Option(code: 'D', text: 'Good afternoon', isCorrect: false),
      ],
      solution: 'The correct answer is "Good day"',
    ));
    list.add(Question(
      text: 'Which of the following is "Pwohng mwahu"?',
      options: [
        Option(code: 'A', text: 'Good afternoon', isCorrect: false),
        Option(code: 'B', text: 'Good morning', isCorrect: false),
        Option(code: 'C', text: 'Good day', isCorrect: false),
        Option(code: 'D', text: 'Good night', isCorrect: true),
      ],
      solution: 'The correct answer is "Good night "',
    ));
  return list;
}
//inspo Johannes Milke for answer choices styling
