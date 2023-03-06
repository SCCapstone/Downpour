import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pohnpeian_language_app/screens/loginPage.dart';
import 'package:pohnpeian_language_app/screens/pages/result_page.dart';

void main() {
  //Log-in Page Password Tests
  test('empty password returns error', () {
    var result = PasswordFieldValidator.validate('');
    expect(result, 'Password can\'t be empty');
  });
  test('password with space returns error', () {
    var result = PasswordFieldValidator.validate('blah blah');
    expect(result, 'Password can\'t contain a space');
  });
  test('non-empty/no-spaces password returns 0', () {
    var result = PasswordFieldValidator.validate('blah');
    expect(result, '0');
  });
  //Log-in Page Username Tests
  test('empty username returns error', () {
    var result = UsernameFieldValidator.validate('');
    expect(result, 'Username can\'t be empty');
  });
  test('username with space returns error', () {
    var result = UsernameFieldValidator.validate('blah blah');
    expect(result, 'Username can\'t contain a space');
  });
  test('non-empty/no-spaces username returns 0', () {
    var result = UsernameFieldValidator.validate('blah');
    expect(result, '0');
  });

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
