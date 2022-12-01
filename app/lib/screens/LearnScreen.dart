import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/widget/FrostedCard.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as custom_style;

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

  @override
  Widget build(BuildContext context) {
    return Stepper(
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
        //route to lesson
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      steps: const <Step>[
        Step(
          title: Text('Basic phrases 1'),
          content: FrostedCard(
              text:
                  'Learn basic phrases, such as hello, goodbye, my name is...'),
          state: StepState.complete,
        ),
        Step(
          title: Text('Basic Vocabulary 1'),
          content: FrostedCard(text: "Learn basic vocabulary for animals"),
        ),
        Step(
          title: Text('Basic Grammar 1'),
          content: FrostedCard(text: 'Verb order and alphabet'),
        ),
      ],
    );
  }
}
