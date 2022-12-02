import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:pohnpeian_language_app/widget/LessonSlideFactory.dart';
import 'package:pohnpeian_language_app/widget/EndLessonCheck.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as custom_style;

class LessonSlideDeck extends StatefulWidget {
  final List<Map<String, dynamic>> lessonSlides;
  final String title;

  const LessonSlideDeck(
      {super.key, required this.lessonSlides, required this.title});

  @override
  _LessonSlideDeckState createState() => _LessonSlideDeckState();
}

class _LessonSlideDeckState extends State<LessonSlideDeck> {
  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < widget.lessonSlides.length; i++) {
      tabs.add(LessonSlideFactory.getSlide(widget.lessonSlides[i]));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            title: Text(widget.title, style: custom_style.appBarText),
            backgroundColor: custom_style.light),
        body: Container(
            color: custom_style.primary,
            padding: EdgeInsets.only(bottom: 90),
            child: IntroSlider(
              backgroundColorAllSlides: custom_style.primary,
              renderSkipBtn: const Text("Skip All"),
              renderNextBtn: const Text(
                "Next",
                style: TextStyle(color: Colors.black),
              ),
              renderDoneBtn: const Text(
                "Done",
                style: TextStyle(color: Colors.black),
              ),
              colorDoneBtn: Colors.white,
              colorActiveDot: Colors.white,
              sizeDot: 8.0,
              typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
              listCustomTabs: renderListCustomTabs(),
              scrollPhysics: const BouncingScrollPhysics(),
              hideStatusBar: false,
              onDonePress: () => Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => EndLessonCheck(title: widget.title),
                    settings: const RouteSettings(name: "/lesson") //LessonPage
                    ),
              ),
            )));
  }
}
