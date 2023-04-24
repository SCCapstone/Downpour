import 'package:flutter_test/flutter_test.dart';
import 'package:pohnpeian_language_app/screens/pages/result_page.dart';

void main() {
  //Result Page Tests
  //TotalQuestionsTest
  test('7 total Questions returns 1', () {
    var result = TotalQuestionsTest1.validate(7);
    expect(result, 1);
  });
  test('5 total Questions returns 0', () {
    var result = TotalQuestionsTest1.validate(5);
    expect(result, 0);
  });
  test('0 total Questions returns 0', () {
    var result = TotalQuestionsTest1.validate(0);
    expect(result, 0);
  });
}
