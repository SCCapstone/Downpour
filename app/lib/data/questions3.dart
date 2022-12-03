import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';

List<Question> getQuestions3() {
  List<Question> list = [];

  list.add(Question(
    text: 'Which of the following is "Coconut"?',
    options: [
      Option(code: 'A', text: 'Mwenge', isCorrect: false),
      Option(code: 'B', text: 'Mwangas', isCorrect: true),
      Option(code: 'C', text: 'Kep', isCorrect: false),
      Option(code: 'D', text: 'Rais', isCorrect: false),
    ],
    solution: 'The correct answer is "Mwangas" ',
  ));
  list.add(Question(
    text: 'Which of the following is "Pineapple"?',
    options: [
      Option(code: 'A', text: 'Mwahmw', isCorrect: false),
      Option(code: 'B', text: 'Mahi', isCorrect: false),
      Option(code: 'C', text: 'Uht', isCorrect: false),
      Option(code: 'D', text: 'Pweinaper', isCorrect: true),
    ],
    solution: 'The correct answer is "Pweinaper" ',
  ));
  list.add(Question(
    text: 'Which of the following is "Banana"?',
    options: [
      Option(code: 'A', text: 'Pihl', isCorrect: false),
      Option(code: 'B', text: 'Mwahmw', isCorrect: false),
      Option(code: 'C', text: 'Pedede', isCorrect: false),
      Option(code: 'D', text: 'Uht', isCorrect: true),
    ],
    solution: 'The correct answer is "Uht"',
  ));
  list.add(Question(
    text: 'Which of the following is "Fish" ?',
    options: [
      Option(code: 'A', text: 'Mwahmw', isCorrect: true),
      Option(code: 'B', text: 'Duhna', isCorrect: false),
      Option(code: 'C', text: "Makirehl", isCorrect: false),
      Option(code: 'D', text: "Anien", isCorrect: false),
    ],
    solution: 'The correct answer is "Mwahmw"',
  ));
  list.add(Question(
    text: 'Which of the following is "Milk"?',
    options: [
      Option(code: 'A', text: 'Rais', isCorrect: false),
      Option(code: 'B', text: 'Mahi', isCorrect: false),
      Option(code: 'C', text: 'Milik', isCorrect: true),
      Option(code: 'D', text: 'Pihl', isCorrect: false),
    ],
    solution: 'The correct answer is "Milik"',
  ));
  list.add(Question(
    text: ' Which of the following is "Fork"?',
    options: [
      Option(code: 'A', text: 'Ainpwaot', isCorrect: false),
      Option(code: 'B', text: 'Supwuhm', isCorrect: false),
      Option(code: 'C', text: 'Pwohk', isCorrect: true),
      Option(
        code: 'D',
        text: 'Sidohp',
        isCorrect: false,
      ),
    ],
    solution: 'The correct answer is "Pwohk"',
  ));
  list.add(Question(
    text: 'Which of the following is "Eat"?',
    options: [
      Option(code: 'A', text: 'Soutik', isCorrect: false),
      Option(code: 'B', text: 'Menseng', isCorrect: false),
      Option(code: 'C', text: 'Souwas', isCorrect: false),
      Option(code: 'D', text: 'Mwenge', isCorrect: true),
    ],
    solution: 'The correct answer is "Mwenge"',
  ));
  return list;
}
