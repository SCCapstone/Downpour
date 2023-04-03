// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE fil

import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/models/auth_service.dart';
import 'screens/SignUpScreen.dart';
import 'package:pohnpeian_language_app/models/auth_service.dart';

//import 'screens/pages/result_page.dart';
import 'package:firebase_core/firebase_core.dart';
//imports google sign in authentication
import 'package:google_sign_in/google_sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: AuthService().handleAuthState(),
    );
  }
}
