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
    "Which of the following is 'Chicken'?",
    [
      Answer("Malek", true),
      Answer("Mahi", false),
      Answer("Udong", false),
      Answer("Rais", false),
    ],
  ));

  list.add(Question(
    "Which of the following is 'banana'?",
    [
      Answer("Mahi", false),
      Answer("Milik", false),
      Answer("Uht", true),
      Answer("Pedede", false),
    ],
  ));

  list.add(Question(
    "Which of following is 'Stove'?",
    [
      Answer("Suke", false),
      Answer("Malek", false),
      Answer("Supwuhn", false),
      Answer("Sidohp", true),
    ],
  ));

  list.add(Question(
    "Which of the following is 'What is this?'?",
    [
      Answer("Dahkot men?", false),
      Answer("Dahkot met?", true),
      Answer("Ke kohsangia?", false),
      Answer("Ke pahn kohlaia", false),
    ],
  ));

  return list;
}
