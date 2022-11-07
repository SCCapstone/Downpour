import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  static const String _title = "Coolest App Available Inc.";
  static const Color appBarColor = Color.fromRGBO(135, 206, 235, 1.0);
  static const Color background = Color.fromRGBO(255, 100, 100, 1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: (background),
            title: const Text(_title),
            centerTitle: true),
        body: const SearchScreen(),
        backgroundColor: (background),
      ),
    );
  }
}
