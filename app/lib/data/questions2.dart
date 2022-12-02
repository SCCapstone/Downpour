import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';

List<Question> getQuestions2() {
  List<Question> list = [];

  list.add(Question(
      text: 'Which of the following is "Mother"?',
      options: [
        Option(code: 'A', text: 'Ehng', isCorrect: false),
        Option(code: 'B', text: 'Nohno', isCorrect: true),
        Option(code: 'C', text: 'Mwenge', isCorrect: false),
        Option(code: 'D', text: 'Malek', isCorrect: false),
      ],
      solution: 'The correct answer is "Nohno" ',
    ));
    list.add(Question(
      text: 'Which of the following is "Father"?',
      options: [
        Option(code: 'A', text: 'Kahlail', isCorrect: false),
        Option(code: 'B', text: 'Mwahu', isCorrect: false),
        Option(code: 'C', text: 'E-yung', isCorrect: false),
        Option(code: 'D', text: 'Pahpa', isCorrect: true),
      ],
      solution: 'The correct answer is "Pahpa" ',
    ));
    list.add(Question(
      text: 'Which of the following is "My spouse"?',
      options: [
        Option(code: 'A', text: 'Kidi', isCorrect: false),
        Option(code: 'B', text: 'Malek', isCorrect: false),
        Option(code: 'C', text: 'A kis', isCorrect: false),
        Option(code: 'D', text: 'Ahi pwoud', isCorrect: true),
      ],
      solution: 'The correct answer is "Ahi pwoud"',
    ));
    list.add(Question(
      text: 'Which of the following is "My child/children" ?',
      options: [
        Option(code: 'A', text: 'Nei seri', isCorrect: true),
        Option(code: 'B', text: 'Pwohng mwahu', isCorrect: false),
        Option(code: 'C', text: "A kis", isCorrect: false),
        Option(code: 'D', text: "E-yung", isCorrect: false),
      ],
      solution: 'The correct answer is "Nei seri"',
    ));
    list.add(Question(
      text: 'Which of the following is "My brother"?',
      options: [
        Option(code: 'A', text: 'Soutik mwahu', isCorrect: false),
        Option(code: 'B', text: 'Pwohng mwahu', isCorrect: false),
        Option(code: 'C', text: 'Riei pwutak', isCorrect: true),
        Option(code: 'D', text: 'Souwas mwahu', isCorrect: false),
      ],
      solution: 'The correct answer is "Riei pwutak"',
    ));
    list.add(Question(
      text: ' Which of the following is "My sister"?',
      options: [
        Option(code: 'A', text: 'Menseng mwahu', isCorrect: false),
        Option(code: 'B', text: 'Pwohng mwahu', isCorrect: false),
        Option(code: 'C', text: 'Miei serepein', isCorrect: true),
        Option(
          code: 'D',
          text: 'Soutik mwahu',
          isCorrect: false,
        ),
      ],
      solution: 'The correct answer is "Miei serepein"',
    ));
    list.add(Question(
      text: 'Which of the following is "Grandmother"?',
      options: [
        Option(code: 'A', text: 'Soutik mwahu', isCorrect: false),
        Option(code: 'B', text: 'Menseng mwahu', isCorrect: false),
        Option(code: 'C', text: 'Souwas mwahu', isCorrect: false),
        Option(code: 'D', text: 'Nohno kahlap', isCorrect: true),
      ],
      solution: 'The correct answer is "Nohno kahlap"',
    ));
  return list;
}