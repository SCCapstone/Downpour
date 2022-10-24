import 'package:flutter/material.dart';
import 'QuizScreen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  static const String _title = "Coolest App Available Inc.";
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
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(150),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(),
                child: const Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 45),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: WelcomePage.b,
                  ),
                  child: const Text('Take Quiz 1!'),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const QuizScreen())),
                ))
          ],
        ));
  }
}
