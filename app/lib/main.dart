// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:app/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:app/theme/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const Color background = colorCodeButton;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('                   Take this short Quiz'),
          backgroundColor: background,
        ),
        body: const SignUpPage(),
      ),
    );
  }
}

