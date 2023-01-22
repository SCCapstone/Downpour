import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/screens/LessonScreen.dart';
import 'package:pohnpeian_language_app/widget/FrostedCard.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as custom_style;
import 'package:pohnpeian_language_app/models/lessons.dart' as lessons;
import 'dart:async';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Learn Pohnpeian', style: custom_style.appBarText),
          backgroundColor: custom_style.light,
        ),
        body: const LessonProgression(),
        backgroundColor: custom_style.primary,
      ),
    );
  }
}

class LessonProgression extends StatefulWidget {
  const LessonProgression({super.key});

  @override
  State<LessonProgression> createState() => _LessonProgressionState();
}

class _LessonProgressionState extends State<LessonProgression> {
  int _index = 0;
  final List<List<Map<String, dynamic>>> lessonsList = [
    lessons.lesson1,
    lessons.lesson2,
    lessons.lesson3
  ];
  final List<String> titles = [
    "Basic Phrases 1",
    "Basic Vocabulary 1",
    "Basic Grammar 1"
  ];

  late List<StepState> _listOfStates;
  late bool _hasReminder;

  @override
  void initState() {
    /*
    _listOfStates keeps track of the progress of whether or not a lesson is completed
    - Each item of the list maps onto a lesson
    - Stepstate.complete => The user already completed the lesson
    - Stepstate.indexed => The user has not already completed the lesson
    - What we need to do here is call the database to initialize which items
      are completed for each user
    - Then, the database needs to be updated onStepContinue below
    */
    _listOfStates = [StepState.complete, StepState.indexed, StepState.indexed];

    // TODO: make a function that returns the proper reminder notification for alert dialog
    _hasReminder = false; //for demonstrating the alert dialog
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Stack serves as a way to show the dialog box for lesson suggestion
    // I might suggest get rid of the Stack for some better implementation
    return Stack(children: [
      Stepper(
        controlsBuilder: (BuildContext context, ControlsDetails details) {
          return Container(
            padding: const EdgeInsets.only(top: 10.0),
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: details.onStepContinue,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.only(left: 30, right: 30)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                child: const Text(
                  'LEARN',
                  style: TextStyle(color: Colors.white),
                )),
          );
        },
        currentStep: _index,
        onStepContinue: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LessonSlideDeck(
                  lessonSlides: lessonsList[_index], title: titles[_index]),
              settings: const RouteSettings(name: "/lesson")));
          // update database here
          Timer(const Duration(seconds: 1), () {
            setState(() {
              _listOfStates[_index] = StepState.complete;
            });
          });
        },
        onStepTapped: (int index) {
          setState(() {
            _index = index;
          });
        },
        steps: <Step>[
          Step(
            title: const Text('Basic phrases 1'),
            content: const FrostedCard(
                text:
                    'Learn basic phrases, such as hello, goodbye, my name is...'),
            state: _listOfStates[0],
          ),
          Step(
            title: const Text('Basic Vocabulary 1'),
            content:
                const FrostedCard(text: "Learn basic vocabulary for animals"),
            state: _listOfStates[1],
          ),
          Step(
            title: const Text('Basic Grammar 1'),
            content: const FrostedCard(text: 'Verb order and alphabet'),
            state: _listOfStates[2],
          ),
        ],
      ),
      if (_hasReminder)
        AlertDialog(
          title: const Text('Lesson Reminder'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text(
                    'It\'s been a while since you have done the Basic Phrases 1 Lesson.'),
                Text('Retake it to keep up your skills!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Continue'),
              onPressed: () {
                setState(() {
                  _hasReminder = false;
                });
              },
            ),
          ],
        ),
    ]);
  }
}
