import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/data/futurequestions1.dart';
import 'package:pohnpeian_language_app/data/result.dart';
import 'package:pohnpeian_language_app/models/questions.dart';
import 'package:pohnpeian_language_app/data/questions2.dart';
import 'package:pohnpeian_language_app/data/questions3.dart';
import 'package:pohnpeian_language_app/data/questions4.dart';
import 'package:pohnpeian_language_app/data/questions5.dart';

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
  static String validate(String ans) {
    for (int i = 0; i < getQuestions2().length; i++) {
      Question question = getQuestions2().elementAt(i);
      bool correct = question.options.last.isCorrect;
      String q = question.options.first.code.toString();
      if (correct == true || ans == q) {
        return 'The answer is correct';
      } else {
        continue;
      }
    }
    return 'The answer is Incorrect';
  }
}

class correctQuestionsTest3 {
  static String validate(String ans) {
    for (int i = 0; i < getQuestions3().length; i++) {
      Question question = getQuestions3().elementAt(i);
      bool correct = question.options.last.isCorrect;
      String q = question.options.first.code.toString();
      if (correct == true || ans == q) {
        return 'The answer is correct';
      } else {
        continue;
      }
    }
    return 'The answer is Incorrect';
  }
}

class correctQuestionsTest4 {
  static String validate(String ans) {
    for (int i = 0; i < getQuestions4().length; i++) {
      Question question = getQuestions4().elementAt(i);
      bool correct = question.options.last.isCorrect;
      String q = question.options.first.code.toString();
      if (correct == true || ans == q) {
        return 'The answer is correct';
      } else {
        continue;
      }
    }
    return 'The answer is Incorrect';
  }
}

class correctQuestionsTest5 {
  static String validate(String ans) {
    for (int i = 0; i < getQuestions5().length; i++) {
      Question question = getQuestions5().elementAt(i);
      bool correct = question.options.last.isCorrect;
      String q = question.options.first.code.toString();
      if (correct == true || ans == q) {
        return 'The answer is correct';
      } else {
        continue;
      }
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
  late int _totalQuestion, _correctAnswer, _totalQuestionTest = 0;
  @override
  void initState() {
    _totalQuestion = userResult.length;
    userResult.forEach((element) {
      if (element) _correctAnswer++;
    });
    super.initState();
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
            ],
          ),
        ),
      ),
    );
  }
}
