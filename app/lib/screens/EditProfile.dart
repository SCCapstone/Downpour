import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/models/userModel.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as style;

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: const Color.fromARGB(255, 117, 178, 221),
      ),
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.all(30),
              child: TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    labelStyle: TextStyle(color: Colors.black),
                  ))),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 30),
              child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 7,
                  controller: aboutController,
                  decoration: const InputDecoration(
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(),
                    labelText: 'About Me',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ))),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: style.secondary,
                ),
                child: const Text('Submit Changes'),
                onPressed: () {
                  // state conditions for changing name
                  if (nameController.text != "") {
                    UserPreferences.myUser.name = nameController.text;
                  }
                  UserPreferences.myUser.about = aboutController.text;
                  UserPreferences.myUser.saveData();
                  Navigator.pop(context);
                },
              ))
        ],
      ),
    );
  }
}
