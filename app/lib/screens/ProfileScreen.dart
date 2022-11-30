import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as customStyle;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile Screen',
            style: customStyle.appBarText,
          ),
          backgroundColor: customStyle.light,
        ),
        body: const Center(
          child: Text('Fill in here'),
        ),
        backgroundColor: customStyle.primary,
      ),
    );
  }
}
