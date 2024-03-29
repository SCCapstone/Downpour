import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/models/categories.dart';
import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';
import 'package:pohnpeian_language_app/widget/questions.dart';
import 'package:pohnpeian_language_app/widget/question_number.dart';
import 'package:pohnpeian_language_app/data/result.dart';

class CategoryPage extends StatefulWidget {
  final Category category;

  const CategoryPage({Key? key, required this.category}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  PageController? controller;
  Question? question;

  @override
  void initState() {
    super.initState();

    controller = PageController();
    question = widget.category.questions.first;
    userResult =
        List.generate(widget.category.questions.length, (index) => false);
    selected =
        List.generate(widget.category.questions.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context) as PreferredSizeWidget?,
        body: QuestionsWidget(
          category: widget.category,
          controller: controller,
          onChangedPage: (index) => nextQuestion(index: index),
          onClickedOption: selectOption,
        ),
      );

  Widget buildAppBar(context) => AppBar(
        title: Text(widget.category.categoryName),
        /*  actions: [
          Icon(Icons.filter_alt_outlined),
          SizedBox(width: 16),
        ],*/
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 69, 147, 179),
                Color.fromARGB(255, 196, 221, 105)
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: QuestionNumbersWidget(
              questions: widget.category.questions,
              question: question,
              onClickedNumber: (index) =>
                  nextQuestion(index: index, jump: true),
            ),
          ),
        ),
      );

  void selectOption(Option option) {
    setState(() {
      selected[controller!.page!.ceil()] = true;
    });
    if (question!.isLocked) {
      return;
    } else {
      setState(() {
        userResult[controller!.page!.ceil()] = option.isCorrect;
        question!.isLocked = true;
        question!.selectedOption = option;
      });
      print(option.isCorrect);
      print(userResult.toString());
    }
  }

  void nextQuestion({int? index, bool jump = false}) {
    final nextPage = controller!.page! + 1;
    final indexPage = index ?? nextPage.toInt();

    setState(() {
      question = widget.category.questions[indexPage];
    });

    if (jump) {
      controller!.jumpToPage(indexPage);
    }
  }
}
