import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/models/userModel.dart' as usermodel;
import 'package:pohnpeian_language_app/theme/style.dart' as style;
import 'package:pohnpeian_language_app/screens/EditProfile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: prefer_const_constructors
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Profile"),
          backgroundColor: Color.fromARGB(255, 117, 178, 221),
        ),
        body: FutureBuilder(
          builder: (snap, ctx) {
            return ListView(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
                    child: Center(
                        child: Stack(children: [
                      SizedBox(
                          height: 160,
                          width: 160,
                          child: Image.asset(usermodel.profileImages[
                              usermodel.UserPreferences.myUser.imageNo])),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: ClipRect(
                            child: Material(
                              color: style.primary, // Button color
                              child: InkWell(
                                  splashColor: style.secondary,
                                  onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                EditProfilePage(),
                                          ))
                                      .then((_) => setState(
                                          () {})), // .then allows for the page to refresh
                                  child: const SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                      ))),
                            ),
                          ))
                    ]))),
                Center(
                    child: Text(
                  usermodel.UserPreferences.myUser.name,
                  style: TextStyle(fontSize: 20),
                )),
                Container(
                    margin: EdgeInsets.all(30),
                    // ignore: prefer_const_constructors
                    child: Text(usermodel.UserPreferences.myUser.about)),
                TextButton(
                    onPressed: () {
                      final docUser = FirebaseFirestore.instance
                          .collection('Users')
                          .doc('userBase');

                      docUser.set({
                        'name': '',
                      });
                    },
                    child: Text(" Delete Account ")),
              ],
            );
          },
          future: usermodel.UserPreferences.myUser.loadData(),
        ));
  }
}
