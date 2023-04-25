import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';

List<Question> getQuestions() {
  List<Question> list = [];
/* This sets the question format for the quiz while 
  * also adding the functionality for the correct answer
  */
  list.add(Question(
    text: 'Which of the following is "Thank you" (formal)?',
    options: [
      const Option(code: 'A', text: 'Ehng', isCorrect: false),
      const Option(code: 'B', text: 'Kalahngan', isCorrect: true),
      const Option(code: 'C', text: 'Mwenge', isCorrect: false),
      const Option(code: 'D', text: 'Malek', isCorrect: false),
    ],
    solution: 'The correct answer is "Kalahngan" ',
  ));
  list.add(Question(
    text: 'Which of the following is "Thanks" (informal)?',
    options: [
      const Option(code: 'A', text: 'Kahlail', isCorrect: false),
      const Option(code: 'B', text: 'Mwahu', isCorrect: false),
      const Option(code: 'C', text: 'Menlau', isCorrect: false),
      const Option(code: 'D', text: 'E-yung', isCorrect: true),
    ],
    solution: 'The correct answer is "E-yung" ',
  ));
  list.add(Question(
    text: 'Which of the following is "Hello"?',
    options: [
      const Option(code: 'A', text: 'Kidi', isCorrect: false),
      const Option(code: 'B', text: 'Malek', isCorrect: false),
      const Option(code: 'C', text: 'A kis', isCorrect: false),
      const Option(code: 'D', text: 'Kaselehlie', isCorrect: true),
    ],
    solution: 'The correct answer is Kaselehlie',
  ));
  list.add(Question(
    text: 'Which of the following is "How are you?" ?',
    options: [
      const Option(code: 'A', text: 'La iromw', isCorrect: true),
      const Option(code: 'B', text: 'Pwohng mwahu', isCorrect: false),
      const Option(code: 'C', text: "A kis", isCorrect: false),
      const Option(code: 'D', text: "E-yung", isCorrect: false),
    ],
    solution: 'The correct answer is La iromw',
  ));
  list.add(Question(
    text: 'Which of the following is "Good morning"?',
    options: [
      const Option(code: 'A', text: 'Soutik mwahu', isCorrect: false),
      const Option(code: 'B', text: 'Pwohng mwahu', isCorrect: false),
      const Option(code: 'C', text: 'Menseng mwahu', isCorrect: true),
      const Option(code: 'D', text: 'Souwas mwahu', isCorrect: false),
    ],
    solution: 'The correct answer is "Menseng mwahu"',
  ));
  list.add(Question(
    text: ' Which of the following is "Good afternoon"?',
    options: [
      const Option(code: 'A', text: 'Menseng mwahu', isCorrect: false),
      const Option(code: 'B', text: 'Pwohng mwahu', isCorrect: false),
      const Option(code: 'C', text: 'Souwas mwahu', isCorrect: true),
      const Option(code: 'D', text: 'Soutik mwahu', isCorrect: false),
    ],
    solution: 'The correct answer is "Souwas mwahu"',
  ));
  list.add(Question(
    text: 'It\'s getting dark. It was nice meeting you. _______.',
    options: [
      const Option(code: 'A', text: 'Soutik mwahu', isCorrect: false),
      const Option(code: 'B', text: 'Menseng mwahu', isCorrect: false),
      const Option(code: 'C', text: 'Souwas mwahu', isCorrect: false),
      const Option(code: 'D', text: 'Pwohng mwahu', isCorrect: true),
    ],
    solution: 'The correct answer is "Pwohng mwahu"',
  ));
  return list;
}/*These sets of questions test for comprehension from English words
* from English words to their Pohnpeian equivalents
*/
//inspo Johannes Milke for answer choices styling
