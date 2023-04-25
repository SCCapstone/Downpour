// Future Question set 5 (Comprehension of 1 )
import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';


List<Question> getQuestions() {
  List<Question> list = [];
/* This sets the question format for the quiz while 
  * also adding the functionality for the correct answer.
  */
  list.add(Question(
      text: 'Which of the following is "Kalahngan" ?',
      options: [
        const Option(code: 'A', text: 'Please', isCorrect: false),
        const Option(code: 'B', text: 'Thank you (formal)', isCorrect: true),
        const Option(code: 'C', text: 'Help', isCorrect: false),
        const Option(code: 'D', text: 'Leave', isCorrect: false),
      ],
      solution: 'The correct answer is "Thank You" ',
    )); 
    list.add(Question(
      text: 'Which of the following is E-yung ?',
      options: [
        const Option(code: 'A', text: 'Dog', isCorrect: false),
        const Option(code: 'B', text: 'Go', isCorrect: false),
        const Option(code: 'C', text: 'Beach', isCorrect: false),
        const Option(code: 'D', text: 'Thanks" (informal)', isCorrect: true),
      ],
      solution: 'The correct answer is Thanks (informal)',
    ));
    list.add(Question(
      text: 'Which of the following is "Kaselehlie"?',
      options: [
        const Option(code: 'A', text: 'Kidi', isCorrect: false),
        const Option(code: 'B', text: 'Malek', isCorrect: false),
        const Option(code: 'C', text: 'Waterfall', isCorrect: false),
        const Option(code: 'D', text: 'Hello', isCorrect: true),
      ],
      solution: 'The correct answer is Hello',
    ));
    list.add(Question(
      text: 'Which of the following is "La iromw" ?',
      options: [
        const Option(code: 'A', text: "How are you?", isCorrect: true),
        const Option(code: 'B', text: 'Where are you going?', isCorrect: false),
        const Option(code: 'C', text: "How old are you?", isCorrect: false),
        const Option(code: 'D', text: "How much?", isCorrect: false),
      ],
      solution: 'The correct answer is "How are you?"',
    ));
    list.add(Question(
      text: 'Which of the following is Menseng mwahu?',
      options: [
        const Option(code: 'A', text: 'Good day', isCorrect: false),
        const Option(code: 'B', text: 'Good night', isCorrect: false),
        const Option(code: 'C', text: 'Good morning', isCorrect: true),
        const Option(code: 'D', text: 'Good afternoon', isCorrect: false),
      ],
      solution: 'The correct answer is "Good morning"',
    ));
    list.add(Question(
      text: 'Which of the following is Menseng mwahu?',
      options: [
        const Option(code: 'A', text: 'Good day', isCorrect: false),
        const Option(code: 'B', text: 'Good night', isCorrect: false),
        const Option(code: 'C', text: 'Good morning', isCorrect: true),
        const Option(code: 'D', text: 'Good afternoon', isCorrect: false),
      ],
      solution: 'The correct answer is "Good day"',
    ));
    list.add(Question(
      text: 'Which of the following is "Pwohng mwahu"?',
      options: [
        const Option(code: 'A', text: 'Good afternoon', isCorrect: false),
        const Option(code: 'B', text: 'Good morning', isCorrect: false),
        const Option(code: 'C', text: 'Good day', isCorrect: false),
        const Option(code: 'D', text: 'Good night', isCorrect: true),
      ],
      solution: 'The correct answer is "Good night "',
    ));
  return list;
}/*These sets of questions actually do not test for 
*comprehension from English words to their
*Pohnpeian equivalents. These are the inverse
* of the previous question sets as these test
* for comprehension from Pohnpeian words to their
* English equivalent
*/
//inspo Johannes Milke for answer choices styling
