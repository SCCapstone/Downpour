import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pohnpeian_language_app/screens/pages/result_page.dart';

void main() {
//Correct Answer Tests (Future Questions 1)
//Question 1
  test('Answering A on Question 1 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('A', 0, 0);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering B on Question 1 returns Correct', () {
    var result = correctQuestionsTest3.validate('B', 0, 1);
    expect(result, 'The answer is correct');
  });
  test('Answering C on Question 1 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('C', 0, 2);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering D on Question 1 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('D', 0, 3);
    expect(result, 'The answer is Incorrect');
  });

  //Question 2
  test('Answering A on Question 2 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('A', 1, 0);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering B on Question 2 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('B', 1, 1);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering C on Question 2 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('C', 1, 2);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering D on Question 2 returns Correct', () {
    var result = correctQuestionsTest3.validate('D', 1, 3);
    expect(result, 'The answer is correct');
  });

  //Question 3
  test('Answering A on Question 3 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('A', 2, 0);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering B on Question 3 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('B', 2, 1);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering C on Question 3 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('C', 2, 2);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering D on Question 3 returns Correct', () {
    var result = correctQuestionsTest3.validate('D', 2, 3);
    expect(result, 'The answer is correct');
  });

  //Question 4
  test('Answering A on Question 4 returns Correct', () {
    var result = correctQuestionsTest3.validate('A', 3, 0);
    expect(result, 'The answer is correct');
  });
  test('Answering B on Question 4 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('B', 3, 1);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering C on Question 4 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('C', 3, 2);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering D on Question 4 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('D', 3, 3);
    expect(result, 'The answer is Incorrect');
  });

  //Question 5
  test('Answering A on Question 5 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('A', 4, 0);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering B on Question 5 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('B', 4, 1);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering C on Question 5 returns Correct', () {
    var result = correctQuestionsTest3.validate('C', 4, 2);
    expect(result, 'The answer is correct');
  });
  test('Answering D on Question 5 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('D', 4, 3);
    expect(result, 'The answer is Incorrect');
  });

  //Question 6
  test('Answering A on Question 6 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('A', 5, 0);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering B on Question 6 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('B', 5, 1);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering C on Question 6 returns Correct', () {
    var result = correctQuestionsTest3.validate('C', 5, 2);
    expect(result, 'The answer is correct');
  });
  test('Answering D on Question 6 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('D', 5, 3);
    expect(result, 'The answer is Incorrect');
  });

  //Question 7
  test('Answering A on Question 7 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('A', 6, 0);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering B on Question 7 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('B', 6, 1);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering C on Question 7 returns Incorrect', () {
    var result = correctQuestionsTest3.validate('C', 6, 2);
    expect(result, 'The answer is Incorrect');
  });
  test('Answering D on Question 7 returns Correct', () {
    var result = correctQuestionsTest3.validate('D', 6, 3);
    expect(result, 'The answer is correct');
  });
}
