import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';

List<Question> getQuestions5() {
  List<Question> list = [];
 /* This sets the question format for the quiz while 
  * also adding the functionality for the correct answer
  */
  list.add(Question(
    text: 'Which of the following is "Health"?',
    options: [
      const Option(code: 'A', text: 'Kahlail', isCorrect: false),
      const Option(code: 'B', text: 'Ipa', isCorrect: false),
      const Option(code: 'C', text: 'Ehd', isCorrect: false),
      const Option(code: 'D', text: 'Ire', isCorrect: true),
    ],
    solution: 'The correct answer is "Ire" ',
  ));
  list.add(Question(
    text: 'Which of the following is "Sick" (feeling)?',
    options: [
      const Option(code: 'A', text: 'Oio', isCorrect: false),
      const Option(code: 'B', text: 'Mai', isCorrect: false),
      const Option(code: 'C', text: 'Uh', isCorrect: false),
      const Option(code: 'D', text: 'Oh', isCorrect: true),
    ],
    solution: 'The correct answer is "Oh" ',
  ));
  list.add(Question(
    text: 'Which of the following is "Fever"?',
    options: [
      const Option(code: 'A', text: 'Nain', isCorrect: false),
      const Option(code: 'B', text: 'Kereniol', isCorrect: true),
      const Option(code: 'C', text: 'Rapwa', isCorrect: false),
      const Option(code: 'D', text: 'Malaulau', isCorrect: false),
    ],
    solution: 'The correct answer is "Kereniol"',
  ));
  list.add(Question(
    text: 'Which of the following is "Cold/Flu/Pneumonia" ?',
    options: [
      const Option(code: 'A', text: 'Soumwahu en waii', isCorrect: true),
      const Option(code: 'B', text: 'Soumwahu en wol', isCorrect: false),
      const Option(code: 'C', text: 'Soumwahu karakar', isCorrect: false),
      const Option(code: 'D', text: "Soumwahu lusulus", isCorrect: false),
    ],
    solution: 'The correct answer is "Soumwahu en waii"',
  ));
  list.add(Question(
    text: 'Which of the following is "Sneeze"?',
    options: [
      const Option(code: 'A', text: 'Ned', isCorrect: false),
      const Option(code: 'B', text: 'Waik', isCorrect: false),
      const Option(code: 'C', text: 'Asi', isCorrect: true),
      const Option(code: 'D', text: 'Memmen', isCorrect: false),
    ],
    solution: 'The correct answer is "Asi"',
  ));
  list.add(Question(
    text: ' Which of the following is "Cough"?',
    options: [
      const Option(code: 'A', text: 'Koatun', isCorrect: false),
      const Option(code: 'B', text: 'Kohpwa', isCorrect: false),
      const Option(code: 'C', text: 'Kohpek', isCorrect: true),
      const Option(code: 'D', text: 'Kopou', isCorrect: false,),
    ],
    solution: 'The correct answer is "Kohpek"',
  ));
  list.add(Question(
    text: 'Which of the following is "Vomit"?',
    options: [
      const Option(code: 'A', text: 'Uk', isCorrect: false),
      const Option(code: 'B', text: 'Pein', isCorrect: false),
      const Option(code: 'C', text: 'Kahula', isCorrect: false),
      const Option(code: 'D', text: 'Kaluhlu', isCorrect: true),
    ],
    solution: 'The correct answer is "Kaluhlu"',
  ));
  return list;
}/*These sets of questions test for comprehension from English words
* from English words to their Pohnpeian equivalents
*/