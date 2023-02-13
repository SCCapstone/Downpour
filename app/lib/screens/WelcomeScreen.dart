import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/data/catergories.dart';
import 'package:pohnpeian_language_app/widget/category_header_widget.dart';
import 'package:pohnpeian_language_app/data/result.dart';
import 'package:pohnpeian_language_app/widget/app_widget.dart';
import 'package:pohnpeian_language_app/data/user.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  static const Color a = Color.fromRGBO(255, 50, 50, 1.0);
  static const Color b = Color.fromRGBO(255, 50, 50, .75);
  static const Color c = Color.fromRGBO(255, 50, 50, .5);
  static const Color d = Color.fromRGBO(255, 50, 50, .25);
  static const Color background = Color.fromRGBO(255, 100, 100, 1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: (c), centerTitle: true),
        body: const WelcomeState(),
        backgroundColor: (background),
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
                colors: [Color.fromARGB(255, 40, 89, 109), Color.fromARGB(255, 186, 216, 102)],
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
        height: 300,
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
  
Widget build(BuildContext context) => Scaffold(
       appBar: AppBar(
          leading: const Icon(Icons.menu),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Welcome to Quizzes'),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.blue, Colors.yellow],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )),
          ),
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 8),
            buildCategories(),
            const SizedBox(height: 32),
          ],
        ),
      ); 
}
