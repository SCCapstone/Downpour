import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/models/userModel.dart' as usermodel;
import 'package:pohnpeian_language_app/screens/loginPage.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as style;
import 'package:pohnpeian_language_app/screens/EditProfile.dart';
import 'package:pohnpeian_language_app/services/auth.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Profile"),
          backgroundColor: Color.fromARGB(255, 117, 178, 221),
        ),
        body: FutureBuilder(
          builder: (snap, ctx) {
            // RefreshIndicator allows you to refresh the page so you can see
            // your lesson progress change as you go through the lessons
            return RefreshIndicator(
                onRefresh: () async {
                  setState(() {}); // Refresh when drag down
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 540,
                          child: ListView(
                            children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 40, 30, 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          child: Center(
                                              child: Stack(children: [
                                        SizedBox(
                                            height: 120,
                                            width: 120,
                                            child: Image.asset(
                                                usermodel.profileImages[
                                                    usermodel.UserPreferences
                                                        .myUser.imageNo])),
                                        Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: ClipRect(
                                              child: Material(
                                                color: style
                                                    .primary, // Button color
                                                child: InkWell(
                                                    splashColor:
                                                        style.secondary,
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
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            usermodel
                                                .UserPreferences.myUser.name,
                                            style: TextStyle(
                                                fontSize: 27,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Lesson Progress",
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            // sum up lesson progress
                                            "${usermodel.UserPreferences.myUser.lessonProgress.reduce((a, b) => a + b)}",
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600,
                                                color: style.success),
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                              Divider(
                                thickness: 2,
                                color: Colors.grey,
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                                  child: Text(
                                    "About Me",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  )),
                              Container(
                                  margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    usermodel.UserPreferences.myUser.about,
                                    style: TextStyle(fontSize: 18),
                                  )),
                            ],
                          )),
                      TextButton(
                          onPressed: () {
                            Auth().signOut().then((value) => {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext ctx) =>
                                              const LoginPage()))
                                });
                          },
                          child: const Text(
                            "Log Out",
                            style: TextStyle(fontSize: 18),
                          )),
                      SizedBox(height: 80)
                    ]));
          },
          future: usermodel.UserPreferences.myUser.loadData(),
        ));
  }
}
