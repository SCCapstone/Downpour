class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Which of the following is 'Thank you'(formal)?",
    [
      Answer("Kalahngan", true),
      Answer("Ehng", false),
      Answer("Mwenge", false),
      Answer("Malek", false),
    ],
  ));

  list.add(Question(
    "Which of the following is 'Thanks'(informal)?",
    [
      Answer("Kahlail", false),
      Answer("Mwahu", false),
      Answer("Menlau", true),
      Answer("E-yung", false),
    ],
  ));

  list.add(Question(
    "Which of following is 'Hello'?",
    [
      Answer("Kidi", false),
      Answer("Malek", false),
      Answer("A kis", false),
      Answer("Kaselehlie", true),
    ],
  ));

  list.add(Question(
    "Which of the following is 'How are you?'?",
    [
      Answer("Pwohng mwahu", false),
      Answer("La iromw", true),
      Answer("A kis", false),
      Answer("E-yung", false),
    ],
  ));

  return list;
}
