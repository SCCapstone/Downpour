import 'package:flutter/foundation.dart';

class User {
  String name;
  String about;
  int imageNo;
  //final List<StepState> progress;

  //save user data
  //get user data

  User({required this.name, required this.about, required this.imageNo});

  void saveData() {
    /*
    <some variable in database for name> = UserPreferences.myUser.name;
    <some variable in database for about> = UserPreferences.myUser.about;
    <some variable in database for imageNo> = UserPreferences.myUser.imageNo;
    or some setter schema
    */
  }
  void loadData() {
    /*
    UserPreferences.myUser.name = <fetch from database>;
    UserPreferences.myUser.about = <fetch from database>;
    UserPreferences.myUser.imageNo = <fetch from database>;
    */
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

// DEFAULT
class UserPreferences {
  static User myUser = User(
      name: "Lorem Ipsum",
      about: "BIO: This is where the profile would be. "
          "This is would hold the users information as well as the settings area of the app. "
          "This would keep statistics such as your streaks and could even show proficiencies",
      imageNo: 0);
}
