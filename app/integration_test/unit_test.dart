import 'package:flutter/material.dart';
import 'package:test/test.dart';

import 'package:pohnpeian_language_app/main.dart' as app;

void main() {
  test ('empty email returns error', ()
  {
    var result = PasswordFieldValidator.validate('');
    expect(result, 'Password can\'t be empty');
  });
  }