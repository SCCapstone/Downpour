import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';

List<Question> getQuestions4() {
  List<Question> list = [];

  list.add(Question(
    text: 'What is "Pillow"?',
    options: [
      const Option(code: 'A', text: 'Kahlail', isCorrect: false),
      const Option(code: 'B', text: 'Mwahu', isCorrect: false),
      const Option(code: 'C', text: 'E-yung', isCorrect: false),
      const Option(code: 'D', text: 'Uluhl', isCorrect: true),
    ],
    solution: 'The correct answer is "Uluhl" ',
  ));
  list.add(Question(
    text: 'Which of the following is "Soap"?',
    options: [
      const Option(code: 'A', text: 'Kahlail', isCorrect: false),
      const Option(code: 'B', text: 'Mwahu', isCorrect: false),
      const Option(code: 'C', text: 'E-yung', isCorrect: false),
      const Option(code: 'D', text: 'Sohpw', isCorrect: true),
    ],
    solution: 'The correct answer is "Sohpw" ',
  ));
  list.add(Question(
    text: 'Which of the following is "Bed"?',
    options: [
      const Option(code: 'A', text: 'Kidi', isCorrect: false),
      const Option(code: 'B', text: 'Malek', isCorrect: false),
      const Option(code: 'C', text: 'A kis', isCorrect: false),
      const Option(code: 'D', text: 'Peht', isCorrect: true),
    ],
    solution: 'The correct answer is "Peht"',
  ));
  list.add(Question(
    text: 'Which of the following is "Table" ?',
    options: [
      const Option(code: 'A', text: 'Tehpel', isCorrect: true),
      const Option(code: 'B', text: 'Pwohng mwahu', isCorrect: false),
      const Option(code: 'C', text: "A kis", isCorrect: false),
      const Option(code: 'D', text: "E-yung", isCorrect: false),
    ],
    solution: 'The correct answer is "Tehpel"',
  ));
  list.add(Question(
    text: 'Which of the following is "Chair"?',
    options: [
      const Option(code: 'A', text: 'Soutik', isCorrect: false),
      const Option(code: 'B', text: 'Pwohng', isCorrect: false),
      const Option(code: 'C', text: 'Sehr', isCorrect: true),
      const Option(code: 'D', text: 'Souwas', isCorrect: false),
    ],
    solution: 'The correct answer is "Sehr"',
  ));
  list.add(Question(
    text: ' Which of the following is "Clock"?',
    options: [
      const Option(code: 'A', text: 'Menseng', isCorrect: false),
      const Option(code: 'B', text: 'Pwohng', isCorrect: false),
      const Option(code: 'C', text: 'Kuloak', isCorrect: true),
      const Option(
        code: 'D',
        text: 'Soutik',
        isCorrect: false,
      ),
    ],
    solution: 'The correct answer is "Kuloak"',
  ));
  list.add(Question(
    text: 'Which of the following is "Book"?',
    options: [
      const Option(code: 'A', text: 'Soutik', isCorrect: false),
      const Option(code: 'B', text: 'Menseng', isCorrect: false),
      const Option(code: 'C', text: 'Souwas', isCorrect: false),
      const Option(code: 'D', text: 'Pwuhk', isCorrect: true),
    ],
    solution: 'The correct answer is "Pwuhk"',
  ));
  return list;
}
