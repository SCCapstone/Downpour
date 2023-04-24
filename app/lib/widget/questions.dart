import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/models/categories.dart';
import 'package:pohnpeian_language_app/models/option.dart';
import 'package:pohnpeian_language_app/models/questions.dart';
import 'package:pohnpeian_language_app/widget/options.dart';
import 'package:pohnpeian_language_app/screens/pages/result_page.dart';

class QuestionsWidget extends StatelessWidget {
  final Category category;
  final PageController? controller;
  final ValueChanged<int> onChangedPage;
  final ValueChanged<Option> onClickedOption;

  const QuestionsWidget({
    Key? key,
    required this.category,
    required this.controller,
    required this.onChangedPage,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
        onPageChanged: onChangedPage,
        controller: controller,
        itemCount: category.questions.length,
        itemBuilder: (context, index) {
          final question = category.questions[index];

          return buildQuestion(
              context: context,
              question: category.questions[index],
              isLastQuestion: index == category.questions.length - 1);
        },
      );

  Widget buildQuestion({
    required Question question,
    required bool isLastQuestion,
    required BuildContext context,
  }) =>
      Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Text(
              question.text,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 8),
            const Text(
              'Choose your answer from below',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: OptionsWidget(
                question: question,
                onClickedOption: onClickedOption,
              ),
            ),
            if (isLastQuestion)
              Container(
                  margin: const EdgeInsets.only(bottom: 70),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ResultPage(),
                          ),
                        );
                        print("nav to result");
                      },
                      child: const Text("Check Result"),
                    ),
                  )),
          ],
        ),
      );
}
