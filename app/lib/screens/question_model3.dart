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
    "Which of the following is 'Mother'?",
    [
      Answer("Nohno", true),
      Answer("Mahi", false),
      Answer("Udong", false),
      Answer("Rais", false),
    ],
  ));

  list.add(Question(
    "Which of the following is 'Father'?",
    [
      Answer("Mahi", false),
      Answer("Milik", false),
      Answer("Pahpa", true),
      Answer("Pedede", false),
    ],
  ));

  list.add(Question(
    "Which of following is 'my spouse'?",
    [
      Answer("ahi suke", false),
      Answer("ahi malek", false),
      Answer("ahi supwuhn", false),
      Answer("ahi pwoud", true),
    ],
  ));

  list.add(Question(
    "Which of the following is 'my child/children?'?",
    [
      Answer("nei men", false),
      Answer("nei seri", true),
      Answer("nei kohsangia?", false),
      Answer("nei pahn kohlaia", false),
    ],
  ));

  return list;
}
