import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';

List<Question> getQuestions2() {
  List<Question> list = [];

  list.add(Question(
      text: 'Which of the following is "Mother"?',
      options: [
        const Option(code: 'A', text: 'Ehng', isCorrect: false),
        const Option(code: 'B', text: 'Mwenge', isCorrect: false),
        const Option(code: 'C', text: 'Nohno', isCorrect: true),
        const Option(code: 'D', text: 'Malek', isCorrect: false),
      ],
      solution: 'The correct answer is "Nohno" ',
    ));
    list.add(Question(
      text: 'Which of the following is "Father"?',
      options: [
        const Option(code: 'A', text: 'Pahpa', isCorrect: true),
        const Option(code: 'B', text: 'Kahlail', isCorrect: false),
        const Option(code: 'C', text: 'Mwahu', isCorrect: false),
        const Option(code: 'D', text: 'E-yung', isCorrect: false),
      ],
      solution: 'The correct answer is "Pahpa" ',
    ));
    list.add(Question(
      text: 'Which of the following is "My spouse"?',
      options: [
        const Option(code: 'A', text: 'Kidi', isCorrect: false),
        const Option(code: 'B', text: 'Malek', isCorrect: false),
        const Option(code: 'C', text: 'A kis', isCorrect: false),
        const Option(code: 'D', text: 'Ahi pwoud', isCorrect: true),
      ],
      solution: 'The correct answer is "Ahi pwoud"',
    ));
    list.add(Question(
      text: 'Which of the following is "My child/children" ?',
      options: [
        const Option(code: 'A', text: 'Pwohng mwahu', isCorrect: false),
        const Option(code: 'B', text: 'Nei seri', isCorrect: true),
        const Option(code: 'C', text: "A kis", isCorrect: false),
        const Option(code: 'D', text: "E-yung", isCorrect: false),
      ],
      solution: 'The correct answer is "Nei seri"',
    ));
    list.add(Question(
      text: 'Which of the following is "My brother"?',
      options: [
        const Option(code: 'A', text: 'Soutik mwahu', isCorrect: false),
        const Option(code: 'B', text: 'Pwohng mwahu', isCorrect: false),
        const Option(code: 'C', text: 'Riei pwutak', isCorrect: true),
        const Option(code: 'D', text: 'Souwas mwahu', isCorrect: false),
      ],
      solution: 'The correct answer is "Riei pwutak"',
    ));
    list.add(Question(
      text: ' Which of the following is "My sister"?',
      options: [
        const Option(code: 'A', text: 'Menseng mwahu', isCorrect: false),
        const Option(code: 'B', text: 'Pwohng mwahu', isCorrect: false),
        const Option(code: 'C', text: 'Miei serepein', isCorrect: true),
        const Option(code: 'D', text: 'Soutik mwahu', isCorrect: false,),
      ],
      solution: 'The correct answer is "Miei serepein"',
    ));
    list.add(Question(
      text: 'Which of the following is "Grandmother"?',
      options: [
        const Option(code: 'A', text: 'Soutik mwahu', isCorrect: false),
        const Option(code: 'B', text: 'Nohno kahlap', isCorrect: true),
        const Option(code: 'C', text: 'Menseng mwahu', isCorrect: false),
        const Option(code: 'D', text: 'Souwas mwahu', isCorrect: false),
      ],
      solution: 'The correct answer is "Nohno kahlap"',
    ));
  return list;
}