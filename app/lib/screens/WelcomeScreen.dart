import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/data/catergories.dart';
import 'package:pohnpeian_language_app/widget/category_header_widget.dart';
import 'package:pohnpeian_language_app/data/result.dart';
import 'package:pohnpeian_language_app/widget/app_widget.dart';
import 'package:pohnpeian_language_app/data/user.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as custom_style;

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  static const Color a = Color.fromARGB(255, 117, 178, 221);
  static const Color b = Color.fromARGB(255, 117, 178, 221);
  static const Color c = Color.fromARGB(255, 117, 178, 221);
  static const Color d = Color.fromARGB(255, 117, 178, 221);
  static const Color backgroundColor = Color.fromARGB(255, 117, 178, 221);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:
              const Text('Quiz Your Knowledge', style: custom_style.appBarText),
          backgroundColor: custom_style.light,
        ), //maybe add a leading icon menu
        body: const WelcomeState(),
        backgroundColor: (const Color.fromARGB(255, 117, 178, 221)),
      ),
    );
  }
}

class WelcomeState extends StatefulWidget {
  const WelcomeState({Key? key}) : super(key: key);

  @override
  State<WelcomeState> createState() => _WelcomeState();
}

class _WelcomeState extends State<WelcomeState> {
  late int _totalQuestion, _correctAnswer = 0;
  @override
  void initState() {
    _totalQuestion = userResult.length;

    userResult.forEach((element) {
      if (element) _correctAnswer++;
    });
    super.initState();
  }

  Widget buildResult(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Quiz Result'),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 40, 89, 109),
                  Color.fromARGB(255, 186, 216, 102)
                ],
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

  Widget buildResultPage(BuildContext context) => Scaffold(
        appBar: MyAppBar(username: username),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 8),
            buildCategories(),
            const SizedBox(height: 32),
            //buildPopular(context),
          ],
        ),
      );

  Widget buildCategories() => Container(
        height: 600,
        child: GridView(
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: categories
              .map((category) => CategoryHeaderWidget(category: category))
              .toList(),
        ),
      );

  Widget build(BuildContext context) => ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 8),
          buildCategories(),
          const SizedBox(height: 32),
          //buildPopular(context),
        ],
      );
}
