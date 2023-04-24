import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/screens/ExploreScreen.dart';
import 'package:pohnpeian_language_app/screens/LearnScreen.dart';
import 'package:pohnpeian_language_app/screens/ProfileScreen.dart';
import 'package:pohnpeian_language_app/screens/SearchScreen.dart';
import 'package:pohnpeian_language_app/screens/WelcomeScreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as customStyle;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex =
      0; //Current selected index of the bottom navigation bar tab

  void changeTab(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    //List of Screens that you want to put
    final screens = [
      const LearnScreen(),
      const WelcomePage(),
      const SearchScreen(),
      const ExploreScreen(),
      const ProfileScreen(),
    ];

    return Stack(
      children: <Widget>[
        IndexedStack(
          index: _currentIndex,
          children: screens,
        ),
        Container(
            alignment: Alignment.bottomCenter,
            child: CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              onTap: (index) => changeTab(index),
              items: const [
                Icon(Icons.menu_book, color: customStyle.dark),
                Icon(Icons.quiz, color: customStyle.dark),
                Icon(Icons.search, color: customStyle.dark),
                Icon(Icons.explore, color: customStyle.dark),
                Icon(Icons.person, color: customStyle.dark),
              ],
              color: customStyle.light,
            )),
      ],
    );
  }
}
