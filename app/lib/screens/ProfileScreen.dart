import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
        appBar: AppBar(title: Text("Profile"),
            backgroundColor: Color.fromARGB(255, 117, 178, 221),
            
            ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 60,
                width: 60,
                child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://static.vecteezy.com/system/resources/thumbnails/003/337/584/small/default-avatar-photo-placeholder-profile-icon-vector.jpg"))),
            Text("USERNAME"),
            Container(
                margin: EdgeInsets.all(30),
                // ignore: prefer_const_constructors
                child: Text(
                    "BIO: This is where the profile would be. " 
                    "This is would hold the users information as well as the settings area of the app. "
                    "This would keep statistics such as your streaks and could even show proficiencies.") ),
            TextButton(onPressed: () {
              final docUser = FirebaseFirestore.instance
			          .collection('Users')
			          .doc('userBase');
			
			       docUser.set({
				       'name': '',
			});

            }, child: Text(" Delete Account ")),
          ],
        ));
  }
}
