import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/models/userModel.dart';
import 'package:pohnpeian_language_app/screens/LessonScreen.dart';
import 'package:pohnpeian_language_app/widget/FrostedCard.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as custom_style;
import 'package:pohnpeian_language_app/data/lessons.dart' as lessons;
import 'dart:async';

/*
Steps for adding a new lesson:
(1) add new lesson to lessons.dart
(2) include the lesson in lessonsList
(3) include the lesson in _listOfStates
(4) add title for the lesson in titles
(5) add subtitles for the lesson in subTitles
*/

final List<List<Map<String, dynamic>>> lessonsList = [
  lessons.lesson1,
  lessons.lesson2,
  lessons.lesson3,
  lessons.lesson4,
  lessons.lesson5,
  lessons.lesson6,
  lessons.lesson7,
  lessons.lesson8,
  lessons.lesson9,
];
final List<String> titles = [
  "Greetings",
  "Family",
  "Food",
  "Alphabet 1",
  "Alphabet 2",
  "Alphabet 3",
  "Household Objects",
  "Health and sickness",
  "Basic Word Order"
];

final List<String> subTitles = [
  "Learn basic phrases, such as hello, goodbye, my name is...",
  "Learn terms for family members",
  "Learn some terms for different foods",
  "Learn about the alphabet",
  "Learn about the alphabet, continuation of alphabet 1",
  "Learn about the alphabet sounds that don\'t exist or are uncommon in the English language",
  "Learn the words for objects commonly found around the household",
  "Learn words that have to do with health and sickness",
  "Learn how to create basic sentences"
];

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

/*
Function: Returns a list of Steps for Stepper class
Input: A list of StepStates with each marked completed or indexed
Output: A list of Steps
*/
List<Step> stepBuilder(List<StepState> stepStates) {
  List<Step> ret = [];
  for (var i = 0; i < stepStates.length; ++i) {
    ret.add(Step(
      title: Text(titles[i]),
      content: FrostedCard(text: subTitles[i]),
      state: stepStates[i],
    ));
  }
  return ret;
}

class LessonProgression extends StatefulWidget {
  const LessonProgression({super.key});

  @override
  State<LessonProgression> createState() => _LessonProgressionState();
}

class _LessonProgressionState extends State<LessonProgression> {
  int _index = 0;

  List<StepState> _listOfStates = UserPreferences.myUser.lessonProgress
      .map((int num) => num == 0 ? StepState.indexed : StepState.complete)
      .toList();
  late bool _hasReminder;
  bool _dataFetched = false;

  @override
  void initState() {
    super.initState();
    /*
    _listOfStates keeps track of the progress of whether or not a lesson is completed
    - Each item of the list maps onto a lesson
    - Stepstate.complete => The user already completed the lesson
    - Stepstate.indexed => The user has not already completed the lesson
    */

    _hasReminder = false;
    UserPreferences.myUser.loadData().then((value) {
      setState(() {
        _listOfStates = UserPreferences.myUser.lessonProgress
            .map((int num) => num == 0 ? StepState.indexed : StepState.complete)
            .toList();
        _dataFetched = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      _dataFetched // Build the list of steps based on whether or not the data is already fetched
          ? Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
              child: Stepper(
                physics: const BouncingScrollPhysics(),
                controlsBuilder:
                    (BuildContext context, ControlsDetails details) {
                  return Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: details.onStepContinue,
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.only(left: 30, right: 30)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(
                          builder: (context) => LessonSlideDeck(
                              lessonSlides: lessonsList[_index],
                              title: titles[_index]),
                          settings: const RouteSettings(name: "/lesson")))
                      .then((_) => {
                            setState(() {
                              _listOfStates[_index] = StepState.complete;
                              UserPreferences.myUser.lessonProgress[_index] = 1;
                              // Update the database
                              UserPreferences.myUser.saveData();
                            })
                          });
                },
                onStepTapped: (int index) {
                  setState(() {
                    _index = index;
                  });
                },
                steps: stepBuilder(_listOfStates),
              ))
          : Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
              child: Stepper(
                physics: const BouncingScrollPhysics(),
                controlsBuilder:
                    (BuildContext context, ControlsDetails details) {
                  return Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: details.onStepContinue,
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.only(left: 30, right: 30)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(
                          builder: (context) => LessonSlideDeck(
                              lessonSlides: lessonsList[_index],
                              title: titles[_index]),
                          settings: const RouteSettings(name: "/lesson")))
                      .then((_) => {
                            setState(() {
                              _listOfStates[_index] = StepState.complete;
                              UserPreferences.myUser.lessonProgress[_index] = 1;
                              // Update the database
                              UserPreferences.myUser.saveData();
                            })
                          });
                },
                onStepTapped: (int index) {
                  setState(() {
                    _index = index;
                  });
                },
                steps: stepBuilder(_listOfStates),
              )),
      if (_hasReminder) // For any future implemenation in which we could build a reminder system
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
