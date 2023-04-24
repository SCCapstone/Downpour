import 'package:checkmark/checkmark.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'package:pohnpeian_language_app/theme/style.dart' as custom_style;

class EndLessonCheck extends StatefulWidget {
  final String title;
  const EndLessonCheck({super.key, required this.title});

  @override
  _EndLessonCheckState createState() => _EndLessonCheckState();
}

class _EndLessonCheckState extends State<EndLessonCheck> {
  bool checked = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          checked = true;
        }));
    Timer(const Duration(seconds: 2), () {
      Navigator.popUntil(context, (route) => route.settings.name != "/lesson");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            title: Text(widget.title, style: custom_style.appBarText),
            backgroundColor: custom_style.light),
        backgroundColor: custom_style.primary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                child: Transform.rotate(
                    angle: -(pi / 20),
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: CheckMark(
                        active: checked,
                        activeColor: custom_style.secondary,
                        curve: Curves.decelerate,
                        duration: const Duration(milliseconds: 1000),
                      ),
                    ))),
            Container(
                margin: const EdgeInsets.only(top: 60),
                child: const Text(
                  "Lesson Complete",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ));
  }
}
