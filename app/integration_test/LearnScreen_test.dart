import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pohnpeian_language_app/screens/LearnScreen.dart';

void main() {
  //Result Page Tests
  //TotalQuestionsTest
  test('Number of Lessons, Titles, and Subtitles match', () {
    var result = lessonsList.length == titles.length &&
        titles.length == subTitles.length;
    expect(result, true);
  });
}
