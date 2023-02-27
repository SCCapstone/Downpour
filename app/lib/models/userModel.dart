class User {
  String name;
  String about;
  String imagePath;
  //final List<StepState> progress;

  //save user data
  //get user data

  User({required this.name, required this.about, required this.imagePath});

  void saveData() {}
  void writeData() {}
  void loadData() {}
}

class UserPreferences {
  static User myUser = User(
      name: "Lorem Ipsum",
      about: "BIO: This is where the profile would be. "
          "This is would hold the users information as well as the settings area of the app. "
          "This would keep statistics such as your streaks and could even show proficiencies",
      imagePath:
          "https://static.vecteezy.com/system/resources/thumbnails/003/337/584/small/default-avatar-photo-placeholder-profile-icon-vector.jpg");
}
