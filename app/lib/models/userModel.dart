import 'package:cloud_firestore/cloud_firestore.dart';
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

  //m Saves data to firebase, should be used UserPreferences has been changed
  void saveData() async {
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

  // Loads data from firebase by changing the fields in UserPreferences
  Future<void> loadData() async {
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

  reset() {
    UserPreferences.myUser = User(
        name: "Lorem Ipsum",
        about:
            "Edit your About Me and profile image by clicking the Edit icon on the profile picture.",
        imageNo: 0,
        lessonProgress: List.filled(lessonsList.length, 0));
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
      about:
          "Edit your About Me and profile image by clicking the Edit icon on the profile picture.",
      imageNo: 0,
      lessonProgress: List.filled(lessonsList.length, 0));
}
