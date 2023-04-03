import 'package:flutter/foundation.dart';
import 'package:pohnpeian_language_app/screens/LearnScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User {
  String name;
  String about;
  int imageNo;
  List<int> lessonProgress;
  //final List<StepState> progress;

  //save user data
  //get user data

  User(
      {required this.name,
      required this.about,
      required this.imageNo,
      required this.lessonProgress});

  //might have to change these to async functions
  Future<void> saveData() async {
    final user = FirebaseAuth.instance.currentUser;
    await FirebaseFirestore.instance.collection('users').doc(user!.uid).set({
      'name': name,
      'about': about,
      'imageNo': imageNo,
      'lessonProgress': lessonProgress,
    });
  }

  void loadData() async {
    final user = FirebaseAuth.instance.currentUser;
    final snapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get();
    final data = snapshot.data();
    if (data != null) {
      name = data['name'];
      about = data['about'];
      imageNo = data['imageNo'];
      lessonProgress = List<int>.from(data['lessonProgress']);
    }
  }
}

const List<String> profileImages = <String>[
  "Assets/Images/profile/angelfish.jpg",
  "Assets/Images/profile/bluewhale.jpg",
  "Assets/Images/profile/kingfisher.jpg",
  "Assets/Images/profile/lorikeet.jpg",
  "Assets/Images/profile/seaslug.jpg",
  "Assets/Images/profile/seaturtle.jpg",
  "Assets/Images/profile/skink.jpg",
  "Assets/Images/profile/toad.jpg",
];

// DEFAULT VALUES
class UserPreferences {
  static User myUser = User(
      name: "Lorem Ipsum",
      about: "BIO: This is where the profile would be. "
          "This is would hold the users information as well as the settings area of the app. "
          "This would keep statistics such as your streaks and could even show proficiencies",
      imageNo: 0,
      lessonProgress: List.filled(lessonsList.length, 0));
}
