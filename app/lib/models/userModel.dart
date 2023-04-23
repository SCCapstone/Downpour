import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:pohnpeian_language_app/screens/LearnScreen.dart';
import 'package:pohnpeian_language_app/services/auth.dart';

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
  void saveData() async {
    /*
    Probably have to follow some setter schema instead of this:
    <some variable in database for name> = UserPreferences.myUser.name;
    <some variable in database for about> = UserPreferences.myUser.about;
    <some variable in database for imageNo> = UserPreferences.myUser.imageNo;
    <some variable in database for lessonProgress = UserPreferences.myUser.lessonProgress;
    */

    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    DocumentReference ref =
        _firestore.collection('users').doc(Auth().currentUser?.uid);
    return ref.set({
      'name': UserPreferences.myUser.name,
      'about': UserPreferences.myUser.about,
      'imageNo': UserPreferences.myUser.imageNo,
      'lessonProgress': UserPreferences.myUser.lessonProgress
    });
  }

  Future<void> loadData() async {
    /*
    Make sure to handle errors outside of this code if the data hasn't been written yet
    UserPreferences.myUser.name = <fetch from database>;
    UserPreferences.myUser.about = <fetch from database>;
    UserPreferences.myUser.imageNo = <fetch from database>;
    UserPreferences.myUser.lessonProgress = <fetch from database>;
    */
    var vari = await FirebaseFirestore.instance
        .collection("users")
        .doc(Auth().currentUser?.uid)
        .get();
    if (vari.data()!['name'] != null) {
      UserPreferences.myUser.name = vari.data()!['name'];
    }
    if (vari.data()!['about'] != null) {
      UserPreferences.myUser.about = vari.data()!['about'];
    }
    if (vari.data()!['imageNo'] != null) {
      UserPreferences.myUser.imageNo = vari.data()!['imageNo'];
    }
    if (vari.data()!['lessonProgress'] != null) {
      UserPreferences.myUser.lessonProgress =
          vari.data()!['lessonProgress'].cast<int>();
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
