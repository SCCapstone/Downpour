import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/data/futurequestions1.dart';
import 'package:pohnpeian_language_app/data/result.dart';
import 'package:pohnpeian_language_app/models/questions.dart';
import 'package:pohnpeian_language_app/data/questions2.dart';
import 'package:pohnpeian_language_app/data/questions3.dart';
import 'package:pohnpeian_language_app/data/questions4.dart';
import 'package:pohnpeian_language_app/data/questions5.dart';
import 'package:pohnpeian_language_app/widget/options.dart';

class TotalQuestionsTest1 {
  static int validate(int numQ) {
    int _totalQuestionTest = getQuestions().length;
    if (_totalQuestionTest != numQ) {
      return 0;
    }
    if (_totalQuestionTest == numQ) {
      return 1;
    }
    return _totalQuestionTest;
  }
}

class correctQuestionsTestFuture {
  static String validate(String ans, int questionNum, int ansNum) {
    Question question = getQuestions().elementAt(questionNum);
    bool correct = question.options.elementAt(ansNum).isCorrect;
    String q = question.options.elementAt(ansNum).code.toString();
    if (correct == true && q == ans) {
      return 'The answer is correct';
    }
    return 'The answer is Incorrect';
  }
}

class correctQuestionsTest2 {
  static String validate(String ans, int questionNum, int ansNum) {
    Question question = getQuestions2().elementAt(questionNum);
    bool correct = question.options.elementAt(ansNum).isCorrect;
    String q = question.options.elementAt(ansNum).code.toString();
    if (correct == true && q == ans) {
      return 'The answer is correct';
    }
    return 'The answer is Incorrect';
  }
}

class correctQuestionsTest3 {
  static String validate(String ans, int questionNum, int ansNum) {
    Question question = getQuestions3().elementAt(questionNum);
    bool correct = question.options.elementAt(ansNum).isCorrect;
    String q = question.options.elementAt(ansNum).code.toString();
    if (correct == true && q == ans) {
      return 'The answer is correct';
    }
    return 'The answer is Incorrect';
  }
}

class correctQuestionsTest4 {
  static String validate(String ans, int questionNum, int ansNum) {
    Question question = getQuestions4().elementAt(questionNum);
    bool correct = question.options.elementAt(ansNum).isCorrect;
    String q = question.options.elementAt(ansNum).code.toString();
    if (correct == true && q == ans) {
      return 'The answer is correct';
    }
    return 'The answer is Incorrect';
  }
}

class correctQuestionsTest5 {
  static String validate(String ans, int questionNum, int ansNum) {
    Question question = getQuestions5().elementAt(questionNum);
    bool correct = question.options.elementAt(ansNum).isCorrect;
    String q = question.options.elementAt(ansNum).code.toString();
    if (correct == true && q == ans) {
      return 'The answer is correct';
    }
    return 'The answer is Incorrect';
  }
}

class ResultPage extends StatefulWidget {
  ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late int _totalQuestion, _correctAnswer = 0, _totalQuestionTest = 0;
  @override
  void initState() {
    _totalQuestion = userResult.length;
    userResult.forEach((element) {
      if (element) _correctAnswer++;
    });
    super.initState();
  }

  void resetQuizState(List<Question> questions) {
    for (var question in questions) {
      question.selectedOption = null;
      question.isLocked = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Quiz Result'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.white],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your score: $_correctAnswer / $_totalQuestion"),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Retry Quiz'),
                onPressed: () {
                  resetQuizState(getQuestions());
                  resetQuizState(getQuestions2());
                  resetQuizState(getQuestions3());
                  resetQuizState(getQuestions4());
                  resetQuizState(getQuestions5());
                  NavigatorState navigator = Navigator.of(context);
                  for (int i = 0; i < _totalQuestion; i++) {
                    if (!navigator.canPop()) break;
                    navigator.pop();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
