import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as customStyle;

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text('Explore Screen', style: customStyle.appBarText),
          backgroundColor: customStyle.light,
        ),
        body:  Center(
          child: GestureDetector(
            onTap:(){
              //todo change screen to 
            },
            child: SizedBox
            (
              width: 300,
              height: 200,
              child: Image.asset('Assets/Images/Micronesia.jpg'),
            ),
            ),
        ),
      ),
    );
  }
}
